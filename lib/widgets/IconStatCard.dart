import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/constants.dart';

Widget IconStatCard(icon, box_color, title, value) {
  return Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(box_color),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                title,
              ),
            ),
            Text(
              value,
              style: HeadingTextStyle,
            ),
          ],
        ),
      ],
    ),
  );
}
