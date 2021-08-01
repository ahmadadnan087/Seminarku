import 'package:flutter/material.dart';
import 'package:seminarku_1/List_Seminar/Home.dart';
import 'package:seminarku_1/Profile%20Pengguna/Profile.dart';
import 'package:seminarku_1/Riwayat/Riwayat.dart';
import 'package:seminarku_1/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _pages = [
    MyHomePage(),
    Riwayat(),
    Profile(),
  ];

  int _selectedIndex = 0;

  _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: colorFour,
        onTap: _onTapped,
        selectedItemColor: colorOne,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text(
              'Riwayat',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'Profile',
            ),
          ),
        ],
      ),
    );
  }
}
