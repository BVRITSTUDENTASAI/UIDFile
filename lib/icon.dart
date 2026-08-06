import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon Layout:"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.favorite, size: 100, color: Colors.red),
            Icon(Icons.star, size: 100, color: Colors.green),
            Icon(Icons.thumb_up, size: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
