import 'package:dreamf1team/screens/SelectDriverScreen.dart';
import 'package:dreamf1team/screens/selectPrincipalScreen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:typicons_flutter/typicons_flutter.dart';

import '../Data.dart';
import 'final_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': SelectDriverScreen(),
      'title': 'Drivers',
    },
    {
      'page': SelectPrincipalScreen(),
      'title': 'Team Principals',
    },
    {
      'page': FinalScreen(),
      'title': 'Your Legend Team',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        selectedFontSize: 20,
        unselectedFontSize: 15,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              MdiIcons.racingHelmet,
              size: 25,
            ),
            title: Text(
              'Drivers',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              MdiIcons.accountTie,
              size: 25,
            ),
            title: Text(
              'Principals',
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              MdiIcons.checkerboard,
              size: 25,
            ),
            title: Text(
              'Your Team',
            ),
          ),
        ],
      ),
    );
  }
}
