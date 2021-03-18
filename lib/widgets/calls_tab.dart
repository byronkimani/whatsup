import 'package:flutter/material.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({
    @required this.numberOfMissedCalls,
  });

  final int numberOfMissedCalls;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('CALLS'),
          SizedBox(width: 8),
          numberOfMissedCalls > 0
              ? CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Text(
                    numberOfMissedCalls.toString(),
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
