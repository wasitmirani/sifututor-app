import 'package:flutter/material.dart';

import '../colors/constants.dart';

Widget JobTicketCard(context) {
  return Container(
    width: MediaQuery.of(context).size.width / 1,
    height: 350,
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 20, 10, 0),
              child: Text(
                "J232323400",
                style: TextStyle(color: Colors.green, fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 20, 10, 0),
              child: Text(
                "Putrajaya",
                style: TextStyle(color: Colors.green, fontSize: 14),
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
                  "English (UPSR) - ONLINE - Weekend",
                  style: SubHeadingTextStyle,
                ),
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
                "Details",
                style: SubHeadingTextStyle,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Weekend at 08:00 PM for 1.5 hour(s) of each class.",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "English -4 sessions (1.5) ",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Gender Student: Female(12)",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Mode: Long term",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Preferred Tutor:",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "Gender: Any",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "-Special Request: Saturday 8pm",
                    style: JobTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "RM 126.00/subject",
                    style: TextStyle(
                        fontSize: 18,
                        color: primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
