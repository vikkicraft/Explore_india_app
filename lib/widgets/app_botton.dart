import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bold.dart';

class AppBotton extends StatelessWidget {
  final double size;
  final Color color;
  final Color textColor;
  String? text;
  IconData? icon;
  bool isIcon;


  AppBotton({
    Key? key,
    required this.isIcon,
    this.text,
    this.icon,
    required this.size,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Center(
        child: isIcon == false ? AppLargeText(
          color: textColor,
          fontWeight: FontWeight.bold,
          size: 15,
          text: (text!),

        ) : Icon(icon),
      ),
    );
  }
}
