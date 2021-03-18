import 'package:flutter/material.dart';
import 'package:whatsup/widgets/main_app_bar.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    Key key,
    @required this.menuItems,
  }) : super(key: key);

  final Map<String, Settings> menuItems;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Settings>(
      itemBuilder: (BuildContext context) => menuItems.entries
          .map(
            (entry) => PopupMenuItem(
              child: Text(entry.key),
              value: entry.value,
            ),
          )
          .toList(),
    );
  }
}
