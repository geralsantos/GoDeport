import 'package:flutter/material.dart';
class MyDialog extends StatefulWidget {
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  void _showAlert(){
    AlertDialog dialog = new AlertDialog(
      content: new Text('Mi primer dialogo'),
    );
    showDialog(context: context,child: dialog);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('My dialog'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: 'Ingreso texto xd',
                ),
              ),
              new RaisedButton(
                child: new Text("ver alerta"),
                onPressed: ()=> {_showAlert()},
              )
            ],
          )
        ),
      ),
    );
  }
}