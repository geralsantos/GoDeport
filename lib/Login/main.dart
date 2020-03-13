import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:async'; 
import 'dart:convert';

import '../NavigationRoute/navigationRoute.dart';
import '../utils/flutter/HexColor.dart';

class LoginWidget extends StatefulWidget {
  _LoginWidgetState createState() => _LoginWidgetState();
}



class _LoginWidgetState extends State<LoginWidget> {
  bool isLoggedIn=false;
void initiateFacebook() async{
  var login=FacebookLogin();
  var result = await login.logInWithReadPermissions(['email']);
  switch (result.status) {
    case FacebookLoginStatus.error:
      print("Sugió un error");
      break;
    case FacebookLoginStatus.cancelledByUser:
      print("Cancelado por el usuario");
    break;
    case FacebookLoginStatus.loggedIn:
      onLoginStatusChange(true);
      this.getUserInfo(result);
    break;
    default:
  }
}
void ingresar(){

}
void getUserInfo(FacebookLoginResult result) async{
final token = result.accessToken.token;
final graphResponse = await http.get(
            'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
final profile = json.decode(graphResponse.body);
Navigator.push(context, 
                    new MaterialPageRoute(builder: (context)=>new navigationRoute())
                  );
print(profile);
}
void onLoginStatusChange(bool isLoggedIn){
 setState(() {
   this.isLoggedIn = isLoggedIn;
 });
}
  getData() async{
    http.Response response = await http.get('http://192.168.0.36/wscourse_flutter/login/auth');
    debugPrint(response.body);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // getData();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.green, Colors.blueGrey]
              )
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: 90.0, left: 40.0, right: 40.0, bottom: 90.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    new Container(
                      
                      padding: EdgeInsets.all(20.0),
                      child: new Column(
                        
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                         /* new Container(
                            padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                            child: new Text(
                              "Go Pichanga!",
                              style: new TextStyle(
                                fontFamily: 'UbuntuRegular',
                                fontSize: 35.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),*/
                          new Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: new Column(
                              children: <Widget>[
                                Image.asset('assets/images/wallpaperlogin.png',
                                    width: 250.0, fit: BoxFit.cover),
                              ],
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, bottom: 10.0),
                            child: new TextField(
                              decoration: new InputDecoration(
                                  hintText: 'Usuario'),
                              style: TextStyle(
                                fontFamily: "UbuntuRegular",
                                height: 1.4
                              ),
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(
                                left: 30.0, right: 30.0, bottom: 35.0),
                            child: new TextField(
                              decoration: new InputDecoration(
                                  hintText: 'Contraseña'),
                              style: TextStyle(
                                fontFamily: "UbuntuRegular",
                                height: 1.4
                              ),
                            ),
                          ),
                          new Container(
                              width: 200.0,
                              padding: EdgeInsets.only(left: 50.0, right: 50.0,bottom: 40.0),
                              child: new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    color: Colors.blueAccent,
                                    padding: EdgeInsets.all(7.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      /*centrar siempre y cuando el padre sea row*/
                                      children: <Widget>[
                                        (isLoggedIn?
                                          Text(
                                            "Bienvenido",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ):Text(
                                            "Ingresar",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          )
                                        ),
                                      ],
                                    ),
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0)),
                                    onPressed: () => {},
                                  ),
                                ],
                              )
                          ),
                          new Container(
                              
                              child: new Row(
                                 mainAxisAlignment:
                                          MainAxisAlignment.center,
                                children: <Widget>[
                                  new RawMaterialButton(
                                    onPressed: () {this.initiateFacebook();},
                                    child: new Icon(
                                      FontAwesomeIcons.facebookSquare,
                                      color: Colors.white,
                                    ),
                                    shape: new CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: Colors.blueAccent,
                                    padding: const EdgeInsets.all(10.0),
                                  ),
                                  new RawMaterialButton(
                                    onPressed: () {},
                                    child: new Icon(
                                      FontAwesomeIcons.google,
                                      color: Colors.white,
                                    ),
                                    shape: new CircleBorder(),
                                    elevation: 2.0,
                                    fillColor: Colors.redAccent,
                                    padding: const EdgeInsets.all(10.0),
                                  ),
                                ],
                              )
                          ), 
                          new Container(
                              padding: EdgeInsets.only(top: 50.0),
                              child: new Column(
                                children: <Widget>[
                                  new RaisedButton(
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      /*centrar siempre y cuando el padre sea row*/
                                      children: <Widget>[
                                        Text(
                                          "Soy un visitante",
                                          style: TextStyle(
                                            color: Colors.blue,
                                          ),
                                        textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(20.0)),
                                    onPressed: () => {},
                                  ),
                                  
                                ],
                              ),
                          ),
                          
                        ],
                      ),
                      width: double.infinity,
                      height: 680.0,
                      decoration: BoxDecoration(
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, 15.0),
                              blurRadius: 15.0),
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0.0, -10.0),
                              blurRadius: 10.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
