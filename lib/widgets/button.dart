// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  MainButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: width,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/arrow.png",
              scale: 0.1,
            ),
          ],
        ),
      ),
    );
  }
}
