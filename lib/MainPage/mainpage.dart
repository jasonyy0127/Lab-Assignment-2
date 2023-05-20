import 'package:flutter/material.dart';

import 'profiletab.dart';
import 'reporttab.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
    required this.username,
  }) : super(key: key);

  final String username;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late List<Widget> tabchildren;
  int _currentIndex = 1;
  String maintitle = "Profile";

  @override
  void initState() {
    super.initState();
    print("Profile");
    tabchildren = [
      ReportTab(username: widget.username),
      ProfileTab(username: widget.username),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 21, 42, 78),
      ),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
              ),
              label: "Item"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile")
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        maintitle = "Item";
      }
      if (_currentIndex == 1) {
        maintitle = "Profile";
      }
    });
  }
}
