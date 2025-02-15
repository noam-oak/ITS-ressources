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
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Text("red"),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.green,
                child: Text("green"),
              ),
              SizedBox(height: 15.0),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Text("blue"),
              ),
              SizedBox(height: 20.0),
            ],
          )
        ),
      ),
    );
  }
}