import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/JobTicketCard.dart';
import '../widgets/NotifyCard.dart';

class JobTicketScreen extends StatefulWidget {
  const JobTicketScreen({super.key});

  @override
  State<JobTicketScreen> createState() => _JobTicketScreenState();
}

class _JobTicketScreenState extends State<JobTicketScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('Job Tickets')),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: "Open"),
              Tab(text: "Applied"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search Jobs',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (ctx, int) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: JobTicketCard(context),
                      );
                    },
                  ),
                ),
              ],
            ),
            Center(
              child: Text("It's rainy here"),
            ),
          ],
        ),
      ),
    );
  }
}
