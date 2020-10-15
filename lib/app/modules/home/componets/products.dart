import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "Name": "Batman",
      "Picture": "images/products/imgProduct.jpg",
      "Old_price": 100,
      "Price": 79,
    },
    {
      "Name": "Deadpool",
      "Picture": "images/products/imgProduct2.jpg",
      "Old_price": 30,
      "Price": 25,
    },
    {
      "Name": "Dick Dastardly",
      "Picture": "images/products/imgProduct3.jpg",
      "Old_price": 150,
      "Price": 140,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_product(
            product_name: product_list[index]['Name'],
            product_picture: product_list[index]['Picture'],
            product_old_price: product_list[index]['Old_price'],
            product_price: product_list[index]['Price'],
          );
        });
  }
}

class Single_product extends StatelessWidget {
  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  Single_product({
    this.product_name,
    this.product_picture,
    this.product_old_price,
    this.product_price,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
