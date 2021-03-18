import 'package:flutter/material.dart';
import 'package:whatsup/widgets/calls_tab.dart';
import 'package:whatsup/widgets/chats_tab.dart';
import 'package:whatsup/widgets/menu_button.dart';
import 'package:whatsup/widgets/search_button.dart';
import 'package:whatsup/widgets/status_tab.dart';

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
          children: <Widget>[
            SearchButton(),
            MenuButton(menuItems: menuItems),
          ],
        ),
      ],
      bottom: TabBar(
        indicatorColor: Colors.white,
        tabs: <Widget>[
          ChatsTab(numberOfUnreadMsgs: '10'),
          StatusTab(isAnyStatusUnRead: true),
          CallsTab(numberOfMissedCalls: 0),
        ],
      ),
    );
  }
}
