import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey, // Fond teal
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://w7.pngwing.com/pngs/218/926/png-transparent-stick-man-stick-figure-happy-stick-man-photography-smiley-desktop-wallpaper-thumbnail.png'),
              ),
              Text(
                'etudiant ITS',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
                'Etudiant Ingénieur @EPISEN',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontFamily: 'Oswald',

                ),
              ),
              SizedBox(height: 20.0,
              width: 150.0,
              child: Divider(color: Colors.teal.shade50,
              ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.call,
                      size:20.0,
                      color: Colors.teal.shade900),
                  title: Text(
                    '+33 xx xx xx xx xx',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontFamily: 'Oswald',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.mail,
                      size:20.0,
                      color: Colors.teal.shade900),
                  title: Text(
                    'xxxxxxxx@gmail.com',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontFamily: 'Oswald',
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
