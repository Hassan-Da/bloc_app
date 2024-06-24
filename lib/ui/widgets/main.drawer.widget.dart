import 'package:enset_app/ui/widgets/main.drawer.header.widget.dart';
import 'package:flutter/material.dart';

import 'drawer.item.widget.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const List<dynamic> menu = [
      {
        "title": "Home",
        "route": "/",
        "leadingIcon": Icons.home,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Counter stful",
        "route": "/count-stful",
        "leadingIcon": Icons.event,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Counter bloc",
        "route": "/count-bloc",
        "leadingIcon": Icons.timer,
        "trailingIcon": Icons.arrow_forward
      },
      {
        "title": "Git users",
        "route": "/gitusers",
        "leadingIcon": Icons.supervised_user_circle,
        "trailingIcon": Icons.arrow_forward
      },
    ];
    return Drawer(
        child: Column(children: [
      MainDrawerHeader(),
      Expanded(
          child: ListView.separated(
        itemBuilder: (context, index) {
          return DrawerItemWidget(
            title: menu[index]["title"],
            leadingIcon: menu[index]["leadingIcon"],
            trailingIcon: menu[index]["trailingIcon"],
            onAction: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(menu[index]["route"]);
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 6,
          );
        },
        itemCount: menu.length,
      )),
    ]));
  }
}
