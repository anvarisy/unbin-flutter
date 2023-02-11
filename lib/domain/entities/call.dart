import 'package:flutter_app/domain/entities/user.dart';

class Call{
  final int id;
  User user;
  DateTime logTime;
  String status;

  Call(this.id, this.user, this.logTime, this.status);

  @override
  String toString() {
    return 'Call{id: $id, user: $user, logTime: $logTime, status: $status}';
  }
}