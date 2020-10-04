import 'package:flutter/material.dart';

class UserAccountsDrawer extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<UserAccountsDrawer> {
  
  //Creates the avatar with name, email and image
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Align(
          alignment: Alignment.bottomCenter + Alignment(0, 1),
          child: Text(
            'Nathan Santos',
            style: TextStyle(fontSize: 13.0),
          )),
      accountEmail: Align(
          alignment: Alignment.bottomCenter + Alignment(0, -1),
          child: Text('nathanaelsantos15@gmail.com')),
      currentAccountPicture: GestureDetector(
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars0.githubusercontent.com/u/45519156?s=460&u=46d123a79cb9726558b3aae3df3f8d21766e2b8b&v=4'),
        ),
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(241, 255, 000, 065),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(80.0),       
        ),
      ),
    );
  }
}
