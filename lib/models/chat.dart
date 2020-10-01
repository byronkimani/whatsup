import 'package:flutter/foundation.dart';
import 'package:whatsup/models/person.dart';

class Chat {
  Person sender;
  DateTime sendTime;
  String message;

  Chat({
    @required this.sender,
    @required this.sendTime,
    @required this.message,
  });
}
