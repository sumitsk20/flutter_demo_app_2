import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> _products;

  Products([this._products = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _products
          .map(
            (element) => Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/food_paradise.jpeg'),
                  Text(element)
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
