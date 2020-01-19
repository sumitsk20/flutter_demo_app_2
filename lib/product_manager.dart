import 'package:flutter/material.dart';
import 'products.dart';

class ProductManager extends StatefulWidget {
  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Paradise'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('New food item');
              });
            },
            child: Text('Add Card'),
          ),
        ),
        Products(_products),
      ],
    );
  }
}
