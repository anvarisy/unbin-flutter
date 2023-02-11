
import 'package:flutter_app/domain/entities/User.dart';

class Chat{
  final int id;
  User user;
  DateTime logTime;
  List<String> body;

  Chat(this.id, this.user, this.logTime, this.body);

  @override
  String toString() {
    return 'Chat{id: $id, user: $user, logTime: $logTime, body: $body}';
  }
}