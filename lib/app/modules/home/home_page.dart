import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'drawer/drawer_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
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
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('GeekStore'),
        backgroundColor: Color.fromARGB(241, 255, 000, 065),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: DrawerWidget(),
      body: new ListView(
        children: <Widget>[image_carousel],
      ),
    );
  }
}
