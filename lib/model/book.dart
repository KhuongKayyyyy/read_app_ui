class Book {
  static int _idCounter = 0;
  final int id;
  final String bookName;
  final String bookAuthor;
  final String bookOverView;
  final String imgURL;
  final String genre;
  Book({required this.bookName, required this.bookAuthor, required this.bookOverView, required this.imgURL, required this.genre})
      : id = _idCounter++; // Assign and increment the id counter

  @override
  String toString() {
    return 'Users{id: $id, bookName: $bookName, bookAuthor: $bookName}, bookOverview: $bookOverView}';
  }
}