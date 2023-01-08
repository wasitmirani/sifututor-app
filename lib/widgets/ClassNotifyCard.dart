import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ClassNotifyCard(context) {
  return Container(
    height: 80,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.black12,
    ),
    child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You have ongoing Class..",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Icon(Icons.timer),
                ],
              ),
            ],
          ),
        )),
  );
}
