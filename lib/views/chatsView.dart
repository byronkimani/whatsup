import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 15,
      itemBuilder: (ctx, i) => ListTile(
        title: Text('data'),
      ),
    );
  }
}
