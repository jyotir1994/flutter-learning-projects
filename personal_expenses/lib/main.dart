import 'package:flutter/material.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: Text('Chart!'),
            ),
            Card(
              child: Text('sdsd'),
            )
          ],
        ),
      ),
    );
  }
}