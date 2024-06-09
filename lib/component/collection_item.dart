import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:read_app/model/book.dart';

class CollectionItem extends StatelessWidget{
  final Book book;
  CollectionItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      width: 330,
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: CachedNetworkImage(
              imageUrl: book.imgURL,
              height: 77,
              width: 57,
              fit: BoxFit.cover,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(width: 8,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 9,
                        child: Text(
                          book.bookName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child:Icon(
                            Icons.bookmark,
                            color: Color(0xFF34A853),
                          )
                      ),
                    ],
                  )
                  ,
                ),
                Text(
                  book.bookAuthor,
                  style: TextStyle(
                    fontWeight: FontWeight.w300
                  ),
                ),
                Flexible(child: Text(
                    book.bookOverView,
                    maxLines: 1,
                ))
              ],
            )
            ,
          )
        ],
      )
    );
  }
}