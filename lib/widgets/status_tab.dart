import 'package:flutter/material.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({@required this.isAnyStatusUnRead});

  final bool isAnyStatusUnRead;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('STATUS'),
          SizedBox(width: 5),
          isAnyStatusUnRead
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 3,
                )
              : Container()
        ],
      ),
    );
  }
}
