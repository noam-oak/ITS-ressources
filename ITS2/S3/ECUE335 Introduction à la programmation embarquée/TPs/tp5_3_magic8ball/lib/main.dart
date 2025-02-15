import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  final List<String> images = [
    'images/ball1.png',  // Yes
    'images/ball2.png',  // No
    'images/ball3.png',  // Ask again later
    'images/ball4.png',  // The answer is yes
    'images/ball5.png',  // I have no idea
  ];

  String imageActuelle = 'images/ball1.png';

  void genererImage() {
    setState(() {
      imageActuelle = images[Random().nextInt(images.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Image de la boule magique
          Expanded(
            child: TextButton(
              onPressed: genererImage,  // Appelle la fonction pour changer l'image
              child: Image.asset(imageActuelle),  // Affiche l'image actuelle
            ),
          ),
        ],
      ),
    );
  }
}
