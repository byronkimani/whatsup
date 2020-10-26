import 'package:flutter/material.dart';

enum Settings { newGroup, newBroadcast, whatsAppWeb, starredMessages, settings }

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  MainAppBar({Key key})
      : preferredSize = Size.fromHeight(100),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Settings> menuItems = {
      'New group': Settings.newGroup,
      'New broadcast': Settings.newBroadcast,
      'WhatsApp web': Settings.whatsAppWeb,
      'Starred Messages': Settings.starredMessages,
      'Settings': Settings.settings
    };

    return AppBar(
      title: Text('WhatsApp'),
      actions: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            PopupMenuButton<Settings>(
              itemBuilder: (BuildContext context) => menuItems.entries
                  .map(
                    (entry) => PopupMenuItem(
                      child: Text(entry.key),
                      value: entry.value,
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('CHATS'),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Text(
                    '10',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Tab(text: 'STATUS'),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('CALLS'),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 10,
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
