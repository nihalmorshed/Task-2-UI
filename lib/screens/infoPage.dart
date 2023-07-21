import 'package:flutter/material.dart';

import '../components/info.dart';
import 'home.dart';
import 'invoices.dart';

class InfoPage extends StatefulWidget {
  InfoPage({Key? key}) : super(key: key);
  static const String id = 'info_page';

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int _currentIndex = 0;
  final tabs = [
    Info(),
    Invoices(),
    HomePage(),
    Info(),
  ];
  final bars = [
    '⚡ Hello Siam!',
    '⚡ Invoices',
    'Hello Siam!',
    '⚡ Profile',
  ];
  final icons = [
    Icons.replay,
    Icons.add,
    Icons.account_circle_sharp,
    Icons.replay,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          bars[_currentIndex],
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              icons[_currentIndex],
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.yellow,
        elevation: 5,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        fixedColor: Colors.purple,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard_sharp,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.insert_drive_file_sharp,
            ),
            label: "Invoices",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.document_scanner_sharp,
            ),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_sharp,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
