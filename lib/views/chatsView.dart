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
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(vertical: 10),
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          // dense: false,
          leading: CircleAvatar(
              radius: 30, backgroundImage: AssetImage('assets/images/him.jpg')
              // Image.asset(
              //   'assets/images/him.jpg',
              //   fit: BoxFit.cover,
              // ),
              ),
          title: Text('The message goes heren rgiuthgiehrihftie4hr'),
        ),
      ),
    );
  }
}
