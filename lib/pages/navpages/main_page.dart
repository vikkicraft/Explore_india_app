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
            label:"vikas",
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label:"Bar",
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            label:"Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label:"My",
            icon: Icon(Icons.person_add),
          ),
        ],
      ),
    );
  }
}
