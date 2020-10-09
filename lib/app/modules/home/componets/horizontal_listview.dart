import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/games.png',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;

  Category({
    this.image_location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 56.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Games',
                style: TextStyle(
                  color: Color.fromARGB(241, 255, 000, 065),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
