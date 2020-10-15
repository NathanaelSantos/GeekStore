import 'package:flutter/material.dart';

import 'drawer_user_accounts.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  Color color;

  @override
  Widget build(BuildContext context) {
    //returns a listview with the menu items
    return Drawer(
      child: ListView(
        //Creates each menu item
        children: <Widget>[
          UserAccountsDrawer(),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('Home page'),
              leading: Icon(
                Icons.home,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('My accont'),
              leading: Icon(
                Icons.person,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('My orders'),
              leading: Icon(
                Icons.shopping_basket,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('Categoris'),
              leading: Icon(
                Icons.dashboard,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('Favourites'),
              leading: Icon(
                Icons.favorite,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          Divider(),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          InkWell(
            borderRadius: _getBorderRadius(),
            onTap: () {},
            child: ListTile(
              title: Text('Logout'),
              leading: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BorderRadius _getBorderRadius() {
    return BorderRadius.only(
      topLeft: const Radius.circular(60.0),
      topRight: const Radius.circular(60.0),
      bottomLeft: const Radius.circular(60.0),
      bottomRight: const Radius.circular(60.0),
    );
  }
}
