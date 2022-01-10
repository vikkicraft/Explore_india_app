// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'search_page.dart';
import 'my_page.dart';
import 'bar_item_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //navigation pages...........................................................
  List pages = [
    HomePage(),
    BarItemPage(),
    MyPage(),
    SearchPage(),
  ];

  int currentIndex = 0;
  void onTap(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,

        //navigation menus..................................................
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            title: Text("Bar"),
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            title: Text("Search"),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            title: Text("My"),
            icon: Icon(Icons.person_add),
          ),
        ],
      ),
    );
  }
}
