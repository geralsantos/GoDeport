import 'package:flutter/material.dart';
class accessAlarmTab extends StatefulWidget {
  _accessAlarmTabState createState() => _accessAlarmTabState();
}
class _accessAlarmTabState extends State<accessAlarmTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: new Center(
         child: new Column(
          children: <Widget>[
            new Icon(
              Icons.access_alarm,
              size: 170.0,
              color: Colors.blue,
            ),
            new Text('Primer Tab: Access Alarm')
          ],
        ),
       ),
    );
  }
}