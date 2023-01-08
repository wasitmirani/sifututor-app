import 'package:flutter/material.dart';
import 'package:sifututor/screens/LoginScreen.dart';
import 'screens/MainScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const MainScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => const LoginScreen(),
      },
    ),
  );
}
