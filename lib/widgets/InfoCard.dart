import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors/constants.dart';

Widget InfoCard(context) {
  const color2 = const Color(0xFF3f48cc);
  const color1 = const Color(0xFF697bfd);

  return Container(
    height: 140,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      gradient: LinearGradient(
        colors: [
          color1,
          color2,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          children: [
            Text(
              getMonth() + " 2023",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "RM 0.0",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "CUMULATIVE COMMISSION",
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}
