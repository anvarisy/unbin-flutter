class User {
  final int id;
  String name;
  String phone;
  String photo;

  User(this.id, this.name, this.phone, this.photo);

  @override
  String toString() {
    return 'User{id: $id, name: $name, phone: $phone, photo: $photo}';
  }

  // factory User.fromJson(e) => User(e['id'], e['name'], e['email'], e['gender'], e['status']);
}