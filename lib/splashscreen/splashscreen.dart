import 'package:bottom_bar/home.dart';
import 'package:bottom_bar/shared.dart';
import 'package:flutter/material.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        (){
          Navigator.pushReplacement(context,
            MaterialPageRoute(
              fullscreenDialog: true,
            builder: (context)=> HomePage(),),
          );
        }
        );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              child: Image.asset('assets/images/logo.png',
              scale: 5,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(motto1,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                        letterSpacing: 0.5
                    ),
                  ),
                  SizedBox(width: 3,),
                  Text(motto2,
                  style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.2
                  ),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
