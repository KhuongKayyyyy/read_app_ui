import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:read_app/explore_page.dart';
import 'package:read_app/model/book.dart';

class BookItem extends StatelessWidget {
  final Book book;

  BookItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(book.bookName);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ExplorePage(book: book)
            )
        );
      },
      child: SizedBox(
        height: 400,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 3,),
              Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: book.imgURL,
                        height: 250, // Adjust the height as needed
                        width: 180, // Make the image take full width
                        fit: BoxFit.cover,
                        placeholder: (context, url) => CircularProgressIndicator(), // Placeholder while loading
                        errorWidget: (context, url, error) => Icon(Icons.error), // Placeholder on error
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFFFBBC05),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          book.genre,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                book.bookName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                book.bookAuthor,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                book.bookOverView,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
