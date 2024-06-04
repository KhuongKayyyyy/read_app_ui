class User {
  static int _idCounter = 0;
  final int id;
  final String userName;
  final String password;

  User({required this.userName, required this.password})
      : id = _idCounter++; // Assign and increment the id counter

  @override
  String toString() {
    return 'Users{id: $id, userName: $userName, password: $password}';
  }
}