// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
        appBarTheme: AppBarTheme(),
      ),

      //
      routes: {
        "/": (context) => Home(),
      },
    );
  }
}
