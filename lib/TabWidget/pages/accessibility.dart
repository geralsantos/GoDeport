import 'package:flutter/material.dart';
class accessibilityTab extends StatefulWidget {
  accessibilityTab({Key key}) : super(key: key);

  _accessibilityTabState createState() => _accessibilityTabState();
}

class _accessibilityTabState extends State<accessibilityTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Column(
         children: <Widget>[
           new Icon(
             Icons.accessibility,
             size: 170.0,
             color: Colors.green
           ),
           new Text('Segundo Tab: accessibility')
         ],
       ),
    );
  }
}