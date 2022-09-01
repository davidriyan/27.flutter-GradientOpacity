import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gradien Opacity'),
        ),
        body: Center(
          child: ShaderMask(
            shaderCallback: (Rectangle) {
              return LinearGradient(
                      colors: [Colors.black, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)
                  .createShader(
                      Rect.fromLTRB(0, 0, Rectangle.width, Rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
                width: 300,
                image: NetworkImage(
                    'https://media.istockphoto.com/photos/pemandangan-picture-id1411021861?b=1&k=20&m=1411021861&s=170667a&w=0&h=fLR59s6_52Doig2IIzFULfOZpXuThmuTgAu2_5z6kUc=')),
          ),
        ),
      ),
    );
  }
}
