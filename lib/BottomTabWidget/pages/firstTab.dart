import 'package:flutter/material.dart';

class firstTab extends StatefulWidget {
  _firstTabState createState() => _firstTabState();
}

class _firstTabState extends State<firstTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Center(
         child: new Column(
           children: <Widget>[
             new Icon(
               Icons.backup,
               size: 170.0,
               color: Colors.blue,
             ),
             new Text("Mi primer Tab xd")
           ],
         ),
       ),
    );
  }
}