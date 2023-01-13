import 'package:flutter/material.dart';
import 'package:sifututor/screens/JobTicketScreen.dart';
import '../colors/constants.dart';
import '/screens/HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: EdgeInsets.all(20.0),
      child: HomeScreen(),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: JobTicketScreen(),
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: _selectedIndex == 0 ? icon_color : icon_secondary,
            ),
            label: 'Home',

            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_open,
              color: _selectedIndex == 1 ? icon_color : icon_secondary,
            ),
            label: 'Job Ticket',
            // backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month,
              color: _selectedIndex == 2 ? icon_color : icon_secondary,
            ),
            label: 'Schedule',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_rounded,
              color: _selectedIndex == 3 ? icon_color : icon_secondary,
            ),
            label: 'Inbox',
            // backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _selectedIndex == 4 ? icon_color : icon_secondary,
            ),
            label: 'More',
            // backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 6, 81, 150),
        onTap: _onItemTapped,
      ),
    );
  }
}
