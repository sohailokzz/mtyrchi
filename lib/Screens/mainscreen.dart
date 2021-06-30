import 'package:flutter/material.dart';
import 'package:mtyrchi/Screens/profile.dart';
import 'package:mtyrchi/nav_drawar.dart';
import 'books.dart';
import 'homescreen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BooksPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: NavDrawer(),
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blue,
              ),
              title: Text('HOME'),
              activeIcon: Icon(
                Icons.home,
                color: Colors.green,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.red,
              ),
              title: Text('CALENDAR'),
              activeIcon: Icon(
                Icons.book,
                color: Colors.amber,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.yellowAccent,
                size: 36,
              ),
              title: Text('PROFILE'),
              activeIcon: Icon(
                Icons.person,
                color: Colors.black,
                size: 36,
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
