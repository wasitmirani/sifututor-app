import 'package:flutter/material.dart';
import 'package:sifututor/widgets/NotifyCard.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(child: Text("Notifications")),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, int) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: NotifyCard(context),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
