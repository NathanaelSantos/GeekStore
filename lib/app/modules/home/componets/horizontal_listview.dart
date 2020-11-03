import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(241, 255, 000, 065),
      height: 70.0,
      child: Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(40.0),
              topRight: const Radius.circular(40.0),
            )),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category(
              imageLocation: 'images/games.png',
              imageSubtitle: 'Games',
            ),
            Category(
              imageLocation: 'images/vestuario.png',
              imageSubtitle: 'Clothes',
            ),
            Category(
              imageLocation: 'images/sneakers.png',
              imageSubtitle: 'Shoes',
            ),
            Category(
              imageLocation: 'images/headphones.png',
              imageSubtitle: 'Accessories',
            ),
            Category(
              imageLocation: 'images/sword.png',
              imageSubtitle: 'Toys',
            ),
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageSubtitle;

  Category({
    this.imageLocation,
    this.imageSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 90.0,
          child: ListTile(
            title: Image.asset(
              imageLocation,
              width: 100.0,
              height: 50.0,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imageSubtitle,
                style: TextStyle(
                    color: Color.fromARGB(241, 255, 000, 065), fontSize: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
