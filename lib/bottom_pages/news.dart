import 'package:bottom_bar/model/model_list.dart';
import 'package:bottom_bar/shared.dart';
import 'package:bottom_bar/show_pages/news_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: infotessColor,
            title: Text(infotessOnline),
            actions: <Widget>[
             popupMenuButton(context)
            ],
            floating: false,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  final _newsList = ModelList.newsList[index];
                  return Card(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0, bottom: 3.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        )
                    ),
                    child: InkWell(
                      splashColor: inkWellColor,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>NewsScreen(newsModel: _newsList,)
                        ));
                      },
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(_newsList.newsTitle,
                            style: TextStyle(
                              color: infotessColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0
                            ),
                            ),
                            Divider(color: Colors.red,
                            thickness: 1.0,
                            ),
                            Text(_newsList.newsContent,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.justify,
                            maxLines: 3,
                            style: TextStyle(
                              wordSpacing: 1.0,
                              color: newsListColor,
                            ),
                            ),
                            SizedBox(height: 15.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(_newsList.newsType,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: newsListColor,
                                ),
                                ),
                                Text(_newsList.newsTime,
                                  style: TextStyle(
                                      fontSize: 10.0,
                                    color: newsListColor,
                                  ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  );
                },
              childCount: ModelList.newsList.length,
            ),
          )
        ],
      ),
    );
  }
}
