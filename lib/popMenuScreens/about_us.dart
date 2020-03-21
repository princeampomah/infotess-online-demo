import 'package:bottom_bar/model/model_list.dart';
import 'package:bottom_bar/shared.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('About Us'),
              backgroundColor: infotessColor,
              floating: false,
              pinned: false,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    final _aboutUsList = ModelList.aboutUsList[index];
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(_aboutUsList.image,
                              scale: 4,),
                            SizedBox(height: 20),
                            Text('BACKGROUND INFORMATION',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 20.0
                              ),
                            ),
                            Text(_aboutUsList.backgroundInfo,
                              style: TextStyle(
                                  color: newsListColor,
                                letterSpacing: 0.3,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('OUR VISION STATEMENT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                                fontSize: 20.0
                            ),
                            ),
                            Text(_aboutUsList.visionStatement,
                              style: TextStyle(
                                  color: newsListColor,
                                letterSpacing: 0.3,
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text('OUR MISSION STATEMENT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20.0
                            ),
                            ),
                            Text(_aboutUsList.missionStatement,
                            style: TextStyle(
                              color: newsListColor,
                              letterSpacing: 0.3,
                            ),
                            ),
                           
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: ModelList.aboutUsList.length,
              ),

            )
          ],
        ),
      ),

    );
  }
}
