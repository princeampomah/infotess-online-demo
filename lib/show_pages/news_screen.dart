import 'package:bottom_bar/model/news_model.dart';
import 'package:bottom_bar/shared.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {

  final NewsModel newsModel;
  NewsScreen({this.newsModel});

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: infotessColor,
              title: Text(infotessOnline),
              floating: false,
              pinned: true,
            ),
            SliverFillRemaining(
              child: Card(
                margin: EdgeInsets.all(3),
                child: SingleChildScrollView(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                    child: Column(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.newsModel.newsTitle,
                              style: TextStyle(
                                color: infotessColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.4,
                              ),
                            ),
                            Divider(color: Colors.red,
                              thickness: 1.5,),
                          ],
                        ),
                        SizedBox(height: 15.0,),
                        Text(widget.newsModel.newsContent,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: newsListColor,
                            letterSpacing: 0.5,
                          ),)
                      ],
                    ),
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}
