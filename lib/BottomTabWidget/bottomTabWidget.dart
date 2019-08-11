import 'package:flutter/material.dart';
import './pages/firstTab.dart';
import './pages/secondTab.dart';
import './pages/thirdTab.dart';
class MyBottomTabs extends StatefulWidget {
  _MyBottomTabsState createState() => _MyBottomTabsState();
}

class _MyBottomTabsState extends State<MyBottomTabs> with SingleTickerProviderStateMixin {
  TabController bottomTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bottomTabController = new TabController(length: 3,vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Bottom Tab Title"),
        backgroundColor: Colors.redAccent,
      ),
      body: new TabBarView(
        children: <Widget>[
          new firstTab(),
          new secondTab(),
          new thirdTab()
        ],
        controller: bottomTabController,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.backup),
            ),
            new Tab(
              icon: new Icon(Icons.map),
            ),
            new Tab(
              icon: new Icon(Icons.favorite),
            )
          ],
        controller: bottomTabController,
        ),
      ),
    );
  }
}