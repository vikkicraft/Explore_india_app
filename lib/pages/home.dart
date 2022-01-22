import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/home_model.dart';
import 'package:flutter_application_1/widgets/home_widget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData()async{
  final getJson =  await  rootBundle.loadString("assets/json/page.json");
  final decodeJson = jsonDecode(getJson);
  var dataJson = decodeJson["pages"];
  PageItem.item = List.from(dataJson).map<PageDataModel>((Item) => PageDataModel.fromMap(Item)).toList();
  setState(() {
    
  });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: PageItem.item.length,
          itemBuilder: (_, index) {
            return HomeTap(item: PageItem.item[index],);
          }),
    );
  }
}
