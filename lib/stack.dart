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
          title: Text("Stack Layout"),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            
            Container(width: 200, height: 200, color: Colors.grey),
            Container(width: 150, height: 150, color: Colors.red),
            Container(width: 100, height: 100, color: Colors.green),
            Container(width: 50, height: 50, color: Colors.blue),
          ],
        ),
      ),
    );
  }
} 