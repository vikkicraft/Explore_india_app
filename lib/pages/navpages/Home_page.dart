// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bold.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

              //header........................................................
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //Discover Section.................................................
            Container(
              margin: EdgeInsets.only(
                left: 20,
              ),
              child: AppLargeText(
                color: Colors.black,
                text: "Discover",
                size: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //tap bar section..............................................
            Container(
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(text: "Hello"),
                  Tab(text: "Yellow"),
                  Tab(text: "Place"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 15),
              height: 200,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.only(right: 20),
                          child: Image(
                            height: 30,
                            width: 100,
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/expo.jpg"),
                          ),
                        );
                      }),
                  Text("Hello_2"),
                  Text("Hello_3"),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            //section 2
            Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                      color: Colors.black,
                      text: "Explore",
                      size: 15,
                      fontWeight: FontWeight.normal),
                  AppLargeText(
                      color: Colors.blue,
                      text: "see all",
                      size: 15,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(left: 15),
              height: 50,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 50,
                    color: Colors.blue,
                    child: Center(child: Text("Explore")),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
