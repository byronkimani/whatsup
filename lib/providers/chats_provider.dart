import 'package:flutter/foundation.dart';
import 'package:whatsup/models/chat.dart';

class Chats with ChangeNotifier {
  final List<Chat> _chats = [
    Chat(
      sender: null,
      sendTime: null,
      message: null,
    ),
  ];

  List<Chat> get chats {
    return [..._chats];
  }

  void addChat() {
    //_chats.add(value);
    notifyListeners();
  }
}
