import 'package:flutter/material.dart';
import './Pages/examplePage.dart';
class navigationRoute extends StatefulWidget {
  _navigationRouteState createState() => _navigationRouteState();
}

class _navigationRouteState extends State<navigationRoute> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pantalla principal"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                child: new Text("Ir a la pantalla secundaria"),
                onPressed: ()=>{
                  Navigator.push(context, 
                    new MaterialPageRoute(builder: (context)=>new secondWidget())
                  ),
                  print("dawwwd")

                },
              )
            ],
          ),
        ),
      )
    );
  }
}
