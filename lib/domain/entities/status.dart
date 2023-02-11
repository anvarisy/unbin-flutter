import 'package:flutter_app/domain/entities/user.dart';

class Status{
  final int id;
  User user;
  List<String> statusText;
  List<String> statusImage;

  Status(this.id, this.user, this.statusText, this.statusImage);

  @override
  String toString() {
    return 'Status{id: $id, user: $user, statusText: $statusText, statusImage: $statusImage}';
  }
}