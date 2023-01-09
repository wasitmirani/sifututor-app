import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../colors/constants.dart';

Widget NotifyCard(context) {
  return Container(
    width: MediaQuery.of(context).size.width / 1,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
        color: Colors.black,
        width: 1,
      ),
      color: Color.fromARGB(255, 255, 255, 255),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: cro,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 20, 10, 0),
              child: Text(
                "Update Class Status",
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Badge(
                toAnimate: true,
                shape: BadgeShape.square,
                badgeColor: Color.fromARGB(255, 250, 236, 184),
                borderRadius: BorderRadius.circular(8),
                badgeContent:
                    Text('Pending', style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  "Add Maths(IGCSE) Physical",
                  style: SubHeadingTextStyle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_right_alt_outlined,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Date: 06-Jan-2023",
                style: TextStyle(color: Colors.black45),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
