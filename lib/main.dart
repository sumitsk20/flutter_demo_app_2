import 'package:flutter/material.dart';

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCoolAppState();
  }
}

class _MyCoolAppState extends State<MyCoolApp> {
  List<String> _products = ['Food Paradise'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('EasyList'),
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Add Card'),
                ),
              ),
              Column(
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
              ),
            ],
          )),
    );
  }
}
