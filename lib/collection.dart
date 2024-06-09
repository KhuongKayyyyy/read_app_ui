import 'package:flutter/material.dart';
import 'package:read_app/component/collection_item.dart';
import 'package:read_app/data/fake_data.dart';
import 'package:read_app/model/book.dart';

class Collection extends StatefulWidget{
  const Collection({super.key});

  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection>{
  final Iterable<Book> recommendation = BOOKS.take(3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding:  const EdgeInsets.only(left: 30),
              child: Text(
            "My Collection",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          ),
          Expanded(child: ListView.builder(
            itemCount: recommendation.length,
            itemBuilder: (context, index){
              Book book = recommendation.elementAt(index);
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: CollectionItem(book: book,),
                  ),
                  SizedBox(
                    width: 325,
                    child: Divider(),
                  )
                ],
              );
            },
          ),
          )
        ],
      )
    );
  }
}