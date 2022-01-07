// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bold.dart';
import 'package:flutter_application_1/widgets/button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images = [
    "image-1.png",
    "image-2.png",
    "image-3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            //Main Screen and background image
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    "assets/images/" + images[index],
                  ),
                ),
              ),

              //
              child: Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(
                          color: Colors.black,
                          text: "Hello",
                          size: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        AppLargeText(
                          color: Colors.black12,
                          text: "Himalaya",
                          size: 20,
                          fontWeight: FontWeight.normal,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppLargeText(
                            color: Colors.black12,
                            size: 15,
                            text:
                                "Files do not need to be stored in your assets folder and mapped in the pubspec. Instead, they can be fetched.",
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MainButton(
                          width: 90,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Colors.blue
                                : Colors.black45,
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
