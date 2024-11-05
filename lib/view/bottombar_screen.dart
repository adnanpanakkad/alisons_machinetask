import 'package:alisons_task/view/home.dart';
import 'package:flutter/material.dart';

class BottombarScreen extends StatefulWidget {
  @override
  _BottombarScreenState createState() => _BottombarScreenState();
}

class _BottombarScreenState extends State<BottombarScreen> {
  int _currentIndex = 0;

  // List of pages for each bottom bar item
  final List<Widget> _pages = [
    HomePage(), // Updated to use HomePage
    const Center(child: Text("Brands")),
    const Center(child: Text("Best items")),
    const Center(child: Text("Categories")),
    const Center(child: Text("Account")),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex], // Displaying the current page
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed, // Enables more than 3 items
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.branding_watermark),
              label: "Brands",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_outline),
              label: "Best items",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
