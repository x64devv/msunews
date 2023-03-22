class User {
  int id;
  String name;
  String email;
  String role;
  String password;

  User({
    this.id = 0,
    required this.name,
    required this.email,
    required this.role,
    required this.password,
  });
}
