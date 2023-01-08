import 'package:flutter/material.dart';
import 'package:sifututor/widgets/ClassNotifyCard.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';

import 'package:sifututor/widgets/InfoCard.dart';

import '../colors/constants.dart';
import '../widgets/ClassesCard.dart';
import '../widgets/IconStatCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Hello,",
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
            ),
          ),
          Container(
            child: Text(
              "Muhammad Khan",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: InfoCard(context),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: ClassNotifyCard(context),
          ),
          SizedBox(height: 10),
          Text("Monthly Summary ", style: HeadingTextStyle),
          Text(getMonth()),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconStatCard(
                    Icons.calendar_month, 0xFFf8b0d8, "Attended hours", "0.00"),
                IconStatCard(Icons.supervised_user_circle, 0xFFf2ab39,
                    "Active Students", "0.00"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconStatCard(Icons.calendar_today, 0xFF14a357,
                    "Scheduled hours", "0.00"),
                IconStatCard(Icons.calendar_today, 0xFFf2ab39,
                    "Cancelled hours", "0.00"),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text("UpComing Classes ", style: HeadingTextStyle),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (ctx, int) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClassesCard(context),
                );
              },
            ),
          ),
          // ClassesCard(),
        ],
      ),
    );
  }
}
