import 'package:flutter/material.dart';
class secondWidget extends StatefulWidget {
  _secondWidgetState createState() => _secondWidgetState();
}
class _secondWidgetState extends State<secondWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pantalla secundaria"),
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RaisedButton(
                child: new Text("Ir Atras!"),
                onPressed: ()=>{
                  Navigator.pop(context),
                  print("geral atras :v")
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}