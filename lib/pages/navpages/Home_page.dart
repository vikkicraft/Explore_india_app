import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bold.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var image = {
    "airplane.png": "airplane",
    "around.png": "around",
    "backpack.png": "backpack",
    "sunglasses.png": "sunglasses",
    "travel-guide.png": "guide",
    "travel-luggage.png": "luggage",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),

          //Main Column start..................................................
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              SizedBox(
                height: 10,
              ),

              //Discover Section.................................................
              AppLargeText(
                color: Colors.black,
                text: "Discover",
                size: 24,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 10,
              ),

              //tap bar section...................................................
              TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "Hello"),
                  Tab(text: "Yellow"),
                  Tab(text: "Place"),
                ],
              ),

              Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                height: 200,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabController,
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

              //Explore section...................................................
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                      color: Colors.black,
                      text: "Explore",
                      size: 15,
                      fontWeight: FontWeight.bold),
                  AppLargeText(
                      color: Colors.blue,
                      text: "see all",
                      size: 15,
                      fontWeight: FontWeight.bold),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                //padding: EdgeInsets.only(left: 15),
                height: 150,
                child: ListView.builder(
                  itemCount: image.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/icons/" + image.keys.elementAt(index),
                                ),
                                fit: BoxFit.scaleDown,
                                scale: 3,
                              ),
                            ),
                          ),
                          AppLargeText(
                              color: Colors.black,
                              text: image.values.elementAt(index),
                              size: 15,
                              fontWeight: FontWeight.normal),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
