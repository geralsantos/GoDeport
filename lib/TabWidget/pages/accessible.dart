import 'package:flutter/material.dart';
class accessibleTab extends StatefulWidget {
  accessibleTab({Key key}) : super(key: key);

  _accessibleTabState createState() => _accessibleTabState();
}

class _accessibleTabState extends State<accessibleTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Column(
         children: <Widget>[
           new Icon(
             Icons.accessible,
             size: 170.0,
             color: Colors.blueAccent,
           ),
           new Text("Tercer Tab: accessible")
         ],
       ),
    );
  }
}