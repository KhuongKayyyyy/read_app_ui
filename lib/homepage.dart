import 'package:flutter/material.dart';
import 'package:read_app/component/book_item.dart';
import 'package:read_app/data/fake_data.dart';
import 'package:read_app/login.dart';
import 'package:read_app/model/book.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  int _selectedIndex = 0;
  Iterable<Book> recommendation = BOOKS.take(5);
  Iterable<Book> newRelease = BOOKS.skip(5).take(5);

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Explore Page'),
    Text('My Collection Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Text _reading_section(){
    return Text('asdasd');
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
                      builder: (context) => Login()
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
      body: Padding(
        padding: EdgeInsets.only(left: 30),
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),
            Text(
              "Recommend for you",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              "Handpicked based on your reading preferences",
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendation.length,
                  itemBuilder: (context, index){
                    Book book = recommendation.elementAt(index);
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: BookItem(book: book,),
                    );
                  }
              ),
            ),

            SizedBox(height: 10,),
            Text(
              "New Release",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              "Newly released books spanning various genres.",
              style: TextStyle(
                fontWeight: FontWeight.w100,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendation.length,
                  itemBuilder: (context, index){
                    Book book = newRelease.elementAt(index);
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: BookItem(book: book,),
                    );
                  }
              ),
            ),
          ],
        ),
        ),
      ),
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
