import 'package:flutter/material.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      padding: EdgeInsets.symmetric(vertical: 10),
      itemBuilder: (ctx, i) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
        child: Container(
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/him.jpg'),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(height: 5),
                    Container(
                      child: Text(
                        'This is the text that was sent by the person',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    '7:08 pm',
                    style: TextStyle(
                        fontSize: 12, color: Theme.of(context).accentColor),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        // fit: FlexFit.loose,
                        // flex: 1,
                        child: Row(
                          children: [
                            Icon(
                              Icons.volume_off,
                              color: Colors.black54,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).accentColor,
                          child: Text(
                            '1',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          radius: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
