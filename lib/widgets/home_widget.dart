import 'package:flutter/material.dart';

import '/models/home_model.dart';
import 'bold.dart';
import 'button.dart';

class HomeTap extends StatelessWidget {

final PageDataModel item;
HomeTap({Key? key,required this.item,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.contain,
          alignment: Alignment.bottomCenter,
          image: NetworkImage(item.image),
        ),
      ),

      // Bold text
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
                  text: item.title,
                  size: 40,
                  fontWeight: FontWeight.bold,
                ),
                AppLargeText(
                  size: 20,
                  color: Colors.grey,
                  text: item.destination,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 250,
                  child: AppLargeText(
                    color: Colors.grey,
                    size: 15,
                    text: item.description,
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

            //navigation bar right indicator
          ],
        ),
      ),
    );
  }
}
