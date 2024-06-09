import 'package:flutter/material.dart';
import 'package:read_app/component/book_item.dart';
import 'package:read_app/data/fake_data.dart';
import 'package:read_app/model/book.dart';

class HomeContent extends StatelessWidget {
  final Iterable<Book> recommendation = BOOKS.take(5);
  final Iterable<Book> newRelease = BOOKS.skip(5).take(5);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  itemCount: newRelease.length,
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
    );
  }
}
