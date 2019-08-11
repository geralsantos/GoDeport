import 'package:flutter/material.dart';
import './pages/accessAlarm.dart';
import './pages/accessibility.dart';
import './pages/accessible.dart';
class MyTabs extends StatefulWidget {
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('My Tabs Title'),
        backgroundColor: Colors.redAccent,
        bottom: new TabBar(
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.access_alarm)
            ),
            new Tab(
              icon: new Icon(Icons.accessibility)
            ),
            new Tab(
              icon: new Icon(Icons.accessible)
            )
          ],
          controller: tabController,
        ),
      ),
      body: new TabBarView(
        children: <Widget>[
          new accessAlarmTab(),
          new accessibilityTab(),
          new accessibleTab()
        ],
        controller: tabController,
      ),
    );
  }
}