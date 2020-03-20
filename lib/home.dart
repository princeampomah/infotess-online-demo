import 'package:bottom_bar/bottom_pages/constituion.dart';
import 'package:bottom_bar/bottom_pages/resources.dart';
import 'package:bottom_bar/bottom_pages/executives.dart';
import 'package:bottom_bar/bottom_pages/event.dart';
import 'package:bottom_bar/bottom_pages/news.dart';
import 'package:bottom_bar/shared.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _showPage = 0;

  void onBottomTap(int index) {
    setState(() {
      _showPage = index;
    });
  }

  List<Widget> _children = [
    Event(),
    News(),
    Executives(),
    Resources(),
    Constitution(),
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 70.0,
          color: infotessColor,
          backgroundColor: Colors.white,
          onTap: onBottomTap,
          items: <Widget>[
            Icon(Icons.event, size: 27, color: Colors.white,),
            Icon(Icons.message, size: 27, color: Colors.white),
            Icon(Icons.people, size: 27, color: Colors.white),
            Icon(Icons.cloud_download, size: 27, color: Colors.white),
            Icon(Icons.library_books, size: 27, color: Colors.white),
          ],
        ),
        body: _children[_showPage]
      ),
    );
  }
}
