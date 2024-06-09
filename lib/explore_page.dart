import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:read_app/collection.dart';
import 'package:read_app/home_content.dart';
import 'package:read_app/login.dart';
import 'package:read_app/model/book.dart';

class ExplorePage extends StatefulWidget {
  final Book book;
  ExplorePage({required this.book});

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
            Expanded(child:
            Text(
              'Read Ease',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF34A853),
                fontWeight: FontWeight.bold,
              ),
            ),),
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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: CachedNetworkImage(
                    imageUrl: widget.book.imgURL,
                    height: 295,
                    width: 217,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => CircularProgressIndicator(), // Placeholder while loading
                    errorWidget: (context, url, error) => Icon(Icons.error), // Placeholder
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                widget.book.bookName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 29
                ),
              ),
              Text(
                widget.book.bookAuthor,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "One of the best book that has been known to human",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(height: 10,),
              Divider(),
              Text(
                "Overview",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
              Text(
                widget.book.bookOverView,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
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
