import 'package:bottom_bar/shared.dart';
import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: infotessColor,
            title: Text(infotessOnline),
            actions: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert),
                color: Colors.white,
              )
            ],
            floating: false,
            pinned: false,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index){
                  return Card(
                    margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(infotessResources,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                          ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Text('637 kb',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.folder_open, color: infotessColor,),
                                    ),
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(Icons.file_download, color: infotessColor,),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );

                },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}
