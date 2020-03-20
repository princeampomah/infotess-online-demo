import 'package:bottom_bar/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Infotess Online Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(44, 21, 82, 1),
      ),
      home: SplashScreen()
    );
  }
}

