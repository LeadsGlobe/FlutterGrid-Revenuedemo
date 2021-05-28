import 'package:flutter/material.dart';
import 'package:revenuedemo/first.dart';
import 'package:revenuedemo/second.dart';
import 'package:revenuedemo/sidedrawer.dart';
import 'package:revenuedemo/third.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FirstPage(),
    SecondPage(),
    ThirdPage()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent[100],
        elevation: 0.0,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text('How To'),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Extra')
          )
        ],
      ),
    );
  }

}
