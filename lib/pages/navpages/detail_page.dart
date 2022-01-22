import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/app_botton.dart';
import 'package:flutter_application_1/widgets/bold.dart';
import 'package:flutter_application_1/widgets/button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int getStar = 4;
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/expo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),

                    //...............................................................
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notification_add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Deatail Card......................................................
            Positioned(
              top: 260,
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Large Himalaya Text......................................
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            color: Colors.black.withOpacity(0.8),
                            text: "Himalaya",
                            size: 30,
                            fontWeight: FontWeight.bold),
                        AppLargeText(
                            color: Colors.blue,
                            text: "KnowMore",
                            size: 15,
                            fontWeight: FontWeight.normal),
                      ],
                    ),

                    SizedBox(height: 05),

                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Location",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color:
                                  getStar > index ? Colors.orange : Colors.grey,
                            );
                          }),
                        ),
                        SizedBox(width: 5),
                        Text("4.0"),
                      ],
                    ),

                    SizedBox(height: 25),

                    AppLargeText(
                        color: Colors.black.withOpacity(0.8),
                        text: "People",
                        size: 25,
                        fontWeight: FontWeight.bold),

                    SizedBox(height: 5),

                    AppLargeText(
                        color: Colors.grey,
                        text: "Number of people in your group",
                        size: 16,
                        fontWeight: FontWeight.normal),

                    SizedBox(height: 15),

                    Wrap(
                      spacing: 10,
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: AppButton(
                            textColor:
                                selected == index ? Colors.white : Colors.black,
                            color:
                                selected == index ? Colors.black : Colors.grey,
                            size: 50,
                            isIcon: false,
                            text: (index + 1).toString(),

                            //icon: Icons.favorite_border,
                          ),
                        );
                      }),
                    ),

                    SizedBox(height: 20),

                    AppLargeText(
                        color: Colors.black.withOpacity(0.8),
                        text: "Descrition",
                        size: 20,
                        fontWeight: FontWeight.bold),

                    SizedBox(height: 10),

                    AppLargeText(
                        color: Colors.black.withOpacity(0.8),
                        text:
                            "2022 Flutter Master Class |Tutorial for Beginners to Advance | Cubit State Management | API Request",
                        size: 15,
                        fontWeight: FontWeight.normal),

                    SizedBox(height: 70),
                    Row(
                      children: [
                        AppButton(
                          isIcon: true,
                          size: 60,
                          color: Colors.blue,
                          textColor: Colors.grey,
                          icon: Icons.favorite_border_outlined,
                        ),

                        SizedBox(width: 20),
                        MainButton(
                          isResponsive: true,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
