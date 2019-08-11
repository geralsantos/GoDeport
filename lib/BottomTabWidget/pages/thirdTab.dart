import 'package:flutter/material.dart';
class thirdTab extends StatefulWidget {
  _thirdTabState createState() => _thirdTabState();
}

class _thirdTabState extends State<thirdTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Center(
         child: new Column(
           children: <Widget>[
             new Icon(
               Icons.favorite,
               size: 170.0,
               color: Colors.green,
             ),
             new Text("Mi tercer tab xd")
           ],
         )
       ),
    );
  }
}