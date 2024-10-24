import 'package:advacnce_ui/alarm.dart';
import 'package:advacnce_ui/create.dart';
import 'package:advacnce_ui/homePage.dart';
import 'package:advacnce_ui/libraryPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [HomePage(), LibraryPage(), Create(),];

  // Method to handle navigation
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              spreadRadius: 0,
              blurRadius: 0,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // Ensure fixed type for better transparency handling
          backgroundColor:
              Colors.transparent, // Set the background to transparent
          elevation: 0, // Ensure no elevation/shadow
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
                color: Colors.blueGrey,
              ),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card_outlined,
                color: Colors.blueGrey,
              ),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.alarm,
                color: Colors.blueGrey,
              ),
              label: 'Alarm',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_chart_sharp,
                color: Colors.blueGrey,
              ),
              label: 'Awards',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue, // Color of selected item
          unselectedItemColor: Colors.blueGrey, // Color of unselected items
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
