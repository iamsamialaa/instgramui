import 'package:flutter/material.dart';
import 'package:instgramui/Screens/Reels.dart';
import 'package:instgramui/Screens/add.dart';
import 'package:instgramui/Screens/home.dart';
import 'package:instgramui/Screens/profile.dart';
import 'package:instgramui/Screens/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom
  int _selectedindex = 0;

  void _navigateBottonBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  // pages
  final List<Widget> _pages = [
    Home(),
    const Search(),
    const Add(),
    const Reels(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedindex,
          onTap: _navigateBottonBar,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
