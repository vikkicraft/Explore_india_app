// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class AppLargeText extends StatelessWidget {
  double size;
  Color color;
  String text;
  FontWeight fontWeight;

  AppLargeText({
    Key? key,
    required this.color,
    required this.text,
    required this.size,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
