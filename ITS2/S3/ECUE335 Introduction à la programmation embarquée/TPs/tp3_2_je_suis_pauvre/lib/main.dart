import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Je suis pauvre",
                style: TextStyle(color: Colors.black, fontSize: 25.0)),
            backgroundColor: Color(0xff008dff),
          ),
          backgroundColor: Colors.white70,
          body: Center(
            child: Image(
              image: NetworkImage(
                  'https://fantasticfacts.net/wp-content/uploads/2021/01/I-am-Rich-App-1024x576.jpg'),

            ),
          ),
        ),
      ));
}