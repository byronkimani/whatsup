import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({
    @required this.numberOfUnreadMsgs,
  });
  final String numberOfUnreadMsgs;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('CHATS'),
          SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 10,
            child: Text(
              numberOfUnreadMsgs,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
