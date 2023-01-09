import 'package:flutter/material.dart';
import 'package:sifututor/colors/constants.dart';
import 'package:sifututor/screens/LoginScreen.dart';
import 'package:sifututor/screens/NotificationScreen.dart';
import 'screens/JobTicketScreen.dart';
import 'screens/MainScreen.dart';

class MyApp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    0xFF5068ff,
    <int, Color>{
      50: Color(0xFF5068ff),
      100: Color(0xFF5068ff),
      200: Color(0xFF5068ff),
      300: Color(0xFF5068ff),
      400: Color(0xFF5068ff),
      500: Color(0xFF5068ff),
      600: Color(0xFF5068ff),
      700: Color(0xFF5068ff),
      800: Color(0xFF5068ff),
      900: Color(0xFF5068ff),
    },
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
        primarySwatch: mycolor,
      ),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        // '/': (context) => const MainScreen(),
        '/': (context) => const NotificationScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => const LoginScreen(),
        '/notification': (context) => const NotificationScreen(),
        '/job-ticket': (context) => const JobTicketScreen(),
      },
    );
  }
}

void main() {
  runApp(MyApp());
}
