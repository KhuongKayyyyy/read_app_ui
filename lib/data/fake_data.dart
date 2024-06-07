import '../model/book.dart';
import '../model/user.dart';

var FAKE_ACCOUNT =[
  User(userName: 'khuong', password: '1123'),
  User(userName: 'user2', password: 'password2'),
  User(userName: 'user3', password: 'password3'),
];

var BOOKS = [
  Book(
      bookName: 'Suối nguồn',
      bookAuthor: 'Nguyễn Đạt Khương',
      bookOverView: 'Nhân vật chính của tác phẩm, Howard Roark, là một kiến trúc sư trẻ theo chủ nghĩa cá nhân, quyết chọn cho mình con đường tranh đấu dù đầy chông gai hơn là phải đem đam mê và quan điểm của mình ra để thỏa hiệp. Tác phẩm theo dấu hành trình của anh trên con đường hoạt động kiến trúc theo trường phái hiện đại, trường phái mà anh cho là ưu việt hơn so với lối kiến trúc truyền thống mà hầu hết tất cả mọi người tôn thờ. Bằng cách xây dựng những mối quan hệ với những nhân vật khác chung quanh Howard Roark, Ayn Rand lột tả nhiều hình mẫu nhân cách con người, tất cả đều khác với hình mẫu lý tưởng mà bà đặt vào Howard Roark.',
      imgURL: 'https://www.nxbtre.com.vn/Images/Book/nxbtre_full_01372023_083700.jpg',
      genre: 'Fiction'
  ),
  Book(
      bookName: 'To Kill a Mockingbird',
      bookAuthor: 'Harper Lee',
      bookOverView: 'The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/81OthjkJBuL.jpg',
      genre: 'Classics'
  ),
  Book(
      bookName: '1984',
      bookAuthor: 'George Orwell',
      bookOverView: 'A dystopian social science fiction novel and cautionary tale, warning the dangers of totalitarianism and oppressive regimes.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/71kxa1-0mfL.jpg',
      genre: 'Science Fiction'
  ),
  Book(
      bookName: 'The Great Gatsby',
      bookAuthor: 'F. Scott Fitzgerald',
      bookOverView: 'A novel about the American dream and the roaring twenties, told through the eyes of Nick Carraway.',
      imgURL: 'https://upload.wikimedia.org/wikipedia/commons/7/7a/The_Great_Gatsby_Cover_1925_Retouched.jpg',
      genre: 'Classics'
  ),
  Book(
      bookName: 'Pride and Prejudice',
      bookAuthor: 'Jane Austen',
      bookOverView: 'A romantic novel that charts the emotional development of the protagonist, Elizabeth Bennet.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/81A-mvlo+QL.jpg',
      genre: 'Romance'
  ),
  Book(
      bookName: 'The Catcher in the Rye',
      bookAuthor: 'J.D. Salinger',
      bookOverView: 'The story of Holden Caulfield, a teenager growing up in New York City in the 1950s.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/81OthjkJBuL.jpg',
      genre: 'Classics'
  ),
  Book(
      bookName: 'The Hobbit',
      bookAuthor: 'J.R.R. Tolkien',
      bookOverView: 'A fantasy novel and children\'s book by English author J. R. R. Tolkien.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/91b0C2YNSrL.jpg',
      genre: 'Fantasy'
  ),
  Book(
      bookName: 'Moby Dick',
      bookAuthor: 'Herman Melville',
      bookOverView: 'The narrative of Captain Ahab\'s obsessive quest to kill the giant white whale, Moby Dick.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/81MeGEk7c6L.jpg',
      genre: 'Adventure'
  ),
  Book(
      bookName: 'War and Peace',
      bookAuthor: 'Leo Tolstoy',
      bookOverView: 'A historical novel that tells the story of Russian society during the Napoleonic Era.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/71mMo1VBpYL.jpg',
      genre: 'Historical Fiction'
  ),
  Book(
      bookName: 'The Alchemist',
      bookAuthor: 'Paulo Coelho',
      bookOverView: 'A philosophical book about a shepherd boy who dreams of finding treasure and embarking on a journey to fulfill his personal legend.',
      imgURL: 'https://images-na.ssl-images-amazon.com/images/I/71aFt4+OTOL.jpg',
      genre: 'Philosophy'
  ),
];