import 'package:flutter/material.dart';
import 'package:geekShopping/app/modules/home/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
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
      "Name": "Dick Dastardl",
      "pro_picture": "images/products/imgProduct3.jpg",
      "Old_price": 150,
      "Price": 140,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['Name'],
            productPicture: productList[index]['pro_picture'],
            productOldPrice: productList[index]['Old_price'],
            productPrice: productList[index]['Price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productOldPrice;
  final productPrice;

  SingleProduct({
    this.productName,
    this.productPicture,
    this.productOldPrice,
    this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: productName,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ProductDetails())),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                height: 40,
                child: ListTile(
                  leading: Text(productName),
                ),
                alignment: Alignment.center,
              ),
              child: Image.asset(
                productPicture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
