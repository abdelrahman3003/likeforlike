import 'package:flutter/material.dart';

import '../shared/componance.dart';
import 'Helppage.dart';
import 'contactspage.dart';
import 'homepage.dart';
import 'madules/profilepage.dart';
import 'profitspage.dart';

class box extends StatefulWidget {
  @override
  _boxState createState() => _boxState();
}

class _boxState extends State<box> {
  int _selectedIndex = 0;
  final List<Widget> _pages = <Widget>[
    Home(),
    profits(),
    Help(),
    Contacts(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profilepage()),
              );
            },
            child: P_profile),
        shadowColor: defultelogocolor2,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: logo,
          ),
        ],
      ),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white30,
            icon: Icon(Icons.home),
            label: 'العمل',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off),
            label: 'الأرباح',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'المساعده',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts_outlined,
            ),
            label: 'جهات الاتصال',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: defultelogocolor2,
        onTap: _onItemTapped,
      ),
    );
  }
}
