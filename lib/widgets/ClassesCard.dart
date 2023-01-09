import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sifututor/colors/constants.dart';

Widget ClassesCard(context) {
  return Container(
    width: MediaQuery.of(context).size.width / 1,
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xFFf2f3f5),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Container(
            //     padding: EdgeInsets.fromLTRB(20, 20, 10, 0),
            //     child: ClipRRect(
            //       borderRadius: BorderRadius.circular(20.0),
            //       child: Image.asset(
            //         '/images/man.png',
            //         width: 50,
            //       ),
            //     )),
            Container(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                "Muhammad Khan Test",
                style: TitleStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Text(
            "Add Maths(IGCSE) Physical",
            style: SubHeadingTextStyle,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Time: 6:00 PM to 7:40 PM",
          style: TextStyle(color: Colors.black45),
        ),
        SizedBox(height: 5),
        Text(
          "Date: 06-Jan-2023",
          style: TextStyle(color: Colors.black45),
        ),
      ],
    ),
  );
}
