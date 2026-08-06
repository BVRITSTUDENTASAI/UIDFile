// 
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
          title: Text("Row Layout"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Container(width: 100, height: 100, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.green),
            Container(width: 100, height: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}