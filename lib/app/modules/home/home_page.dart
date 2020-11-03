import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:geekShopping/app/modules/drawer/drawer_widget.dart';
import 'package:geekShopping/app/modules/home/componets/products.dart';
import 'componets/horizontal_listview.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  
  Uint8List imageBytes;
  String errorMsg;

  @override
  Widget build(BuildContext context) {
    var img = imageBytes != null
        ? Image.memory(
            imageBytes,
            fit: BoxFit.cover,
          )
        : Text(errorMsg != null ? errorMsg : "Loading...");
    Widget makeImageCarousel = Container(
      height: 180.0,
      child: Carousel(
        borderRadius: true,
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/img1.png'),
          AssetImage('images/img2.png'),
          AssetImage('images/img3.png'),
          AssetImage('images/img4.png'),
          AssetImage('images/img5.png'),
          AssetImage('images/img6.png'),
          AssetImage('images/img7.png'),
          AssetImage('images/img8.png'),     
        ],
        autoplay: true,
        animationDuration: Duration(milliseconds: 2500),
        dotSize: 4.0,
        dotColor: Color.fromARGB(241, 255, 000, 065),
        dotBgColor: Colors.transparent,
      ),
    );
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(
          241, 255, 000, 065), //or set color with: Color(0xFF0000FF)
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('GeekStore'),
        backgroundColor: Color.fromARGB(241, 255, 000, 065),
        actions: <Widget>[
          IconButton(
              splashRadius: 22,
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              splashRadius: 22,
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: DrawerWidget(),
      body: new ListView(
        children: <Widget>[
          makeImageCarousel,
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              color: Color.fromARGB(241, 255, 000, 065),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
          //Horizontal list view begins here
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recent products',
              style: TextStyle(
                color: Color.fromARGB(241, 255, 000, 065),
              ),
            ),
          ),
          Container(
            
            height: 260,
            child: Products(),
          )
        ],
      ),
    );
  }
}
