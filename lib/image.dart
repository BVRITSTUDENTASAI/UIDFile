import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImageDemo(),
    ),
  );
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image From Internet"),
      ),
      body: Center(
        child: Image.network(
           
         'https://picsum.photos/200',
         //'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
          width: 250,
          height: 250,
        ),
      ),
    );
  }
}