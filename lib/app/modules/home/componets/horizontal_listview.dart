import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/games.png',
            image_subtitle: 'Games',
          ),
          Category(
            image_location: 'images/vestuario.png',
            image_subtitle: 'Clothes',
          ),
          Category(
            image_location: 'images/sneakers.png',
            image_subtitle: 'Shoes',
          ),
          Category(
            image_location: 'images/headphones.png',
            image_subtitle: 'Headphones',
          ),
          Category(
            image_location: 'images/sword.png',
            image_subtitle: 'Toys',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_subtitle;

  Category({
    this.image_location,
    this.image_subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 106.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100.0,
              height: 60.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                image_subtitle,
                style: TextStyle(
                    color: Color.fromARGB(241, 255, 000, 065), fontSize: 13.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
