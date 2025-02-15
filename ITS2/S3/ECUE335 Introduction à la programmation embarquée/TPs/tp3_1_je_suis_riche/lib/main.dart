import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Je suis riche",
          style: TextStyle(color: Colors.white, fontSize: 20.0)),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/Illustrating_Wikipedia_brochure.pdf/page1-300px-Illustrating_Wikipedia_brochure.pdf.jpg'),

          ),
        ),
      ),
    ));
}