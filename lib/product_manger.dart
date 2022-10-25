import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  products.add('Advanced Food');
                });
              },
              child: Text("Add Product")),
        ),
        Products(products)
      ],
    );
  }
}
