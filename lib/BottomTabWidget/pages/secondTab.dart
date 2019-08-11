import 'package:flutter/material.dart';
class secondTab extends StatefulWidget {
  _secondTabState createState() => _secondTabState();
}

class _secondTabState extends State<secondTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Center(
         child: new Column(
           children: <Widget>[
             new Icon(
               Icons.map,
               size: 170.0,
               color: Colors.redAccent,
             ),
             new Text("Mi segundo tab xd")
           ],
         ) ,
       ),
    );
  }
}