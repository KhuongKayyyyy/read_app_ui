import 'package:flutter/material.dart';
import 'package:read_app/collection.dart';
import 'package:read_app/login.dart';
import 'home_content.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    Text('Explore Page'),
    Collection(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                print("Menu Icon Pressed");
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            ),
            const Text(
              'Read Ease',
              style: TextStyle(
                color: Color(0xFF34A853),
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                print("Search Icon Pressed");
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "My Collection",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF34A853),
        onTap: _onItemTapped,
      ),
    );
  }
}
