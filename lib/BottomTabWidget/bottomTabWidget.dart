import 'package:flutter/material.dart';
import './pages/firstTab.dart';
import './pages/secondTab.dart';
import './pages/thirdTab.dart';
import '../utils/flutter/HexColor.dart';

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
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  Widget buildPageView() {
  return PageView(
    controller: pageController,
    onPageChanged: (index) {
      pageChanged(index);
    },
    children: <Widget>[
      new firstTab(),
      new secondTab(),
      new thirdTab()
    ],
  );
}
  int bottomSelectedIndex = 0;

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My Bottom Tab Title"),
        backgroundColor: Colors.redAccent,
      ),
      body: buildPageView(),
      bottomNavigationBar: new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.white,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: HexColor('#4D4D4D'),
        
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: HexColor('#A6A6A6')))), // sets the inactive color of the `BottomNavigationBar`
    child: new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: bottomSelectedIndex,
      items: [
       
        new BottomNavigationBarItem(
          icon: new Icon(Icons.backup),
          title: new Text("backup"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.map),
          title: new Text("map"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.favorite),
          title: new Text("favorite"),
        )
      ],
       onTap: (int i){bottomTapped(i);},
       
    ),
      

  ),
    );
  }
}