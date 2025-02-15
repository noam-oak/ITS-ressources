import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Jeu de dés',
            style: TextStyle(
            fontSize: 26.0,
            color: Colors.white
          ),
          ),
          backgroundColor: Colors.red[700],
        ),
        body: JeuDeDes(),
      ),
    ),
  );
}

class JeuDeDes extends StatefulWidget {
  @override
  _JeuDeDesState createState() => _JeuDeDesState();
}

class _JeuDeDesState extends State<JeuDeDes> {
  int faceDeGauche = 1;
  int faceDeDroite = 1;

  // Fonction pour changer les deux dés
  void changerLesDes() {
    setState(() {
      faceDeGauche = Random().nextInt(6) + 1;
      faceDeDroite = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: changerLesDes, // Appel de la fonction pour changer les deux dés
                child: Image.asset("images/dice$faceDeGauche.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: changerLesDes, // Appel de la fonction pour changer les deux dés
                child: Image.asset("images/dice$faceDeDroite.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
