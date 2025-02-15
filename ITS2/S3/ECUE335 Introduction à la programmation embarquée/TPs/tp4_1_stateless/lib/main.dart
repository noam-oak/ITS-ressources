import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}