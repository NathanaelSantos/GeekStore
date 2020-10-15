import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "Name": "Batman",
      "pro_picture": "images/products/imgProduct.jpg",
      "Old_price": 100,
      "Price": 79,
    },
    {
      "Name": "Deadpool",
      "pro_picture": "images/products/imgProduct2.jpg",
      "Old_price": 30,
      "Price": 25,
    },
    {
      "Name": "Dick Dastardly",
      "pro_picture": "images/products/imgProduct3.jpg",
      "Old_price": 150,
      "Price": 140,
    },
    {
      "Name": "Dick Dastardly",
      "pro_picture": "images/products/imgProduct3.jpg",
      "Old_price": 150,
      "Price": 140,
    },
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
            product_picture: product_list[index]['pro_picture'],
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
    return Card(
      child: Hero(
        tag: product_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                height: 40,
                child: ListTile(
                  leading: Text(product_name),
                ),
                alignment: Alignment.center,
              ),
              child: Image.asset(
                product_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
