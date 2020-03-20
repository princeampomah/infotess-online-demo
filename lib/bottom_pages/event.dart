import 'package:bottom_bar/model/model_list.dart';
import 'package:bottom_bar/popMenuScreens/about_us.dart';
import 'package:bottom_bar/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    final _eventList = ModelList.eventList[index];
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        splashColor: inkWellColor,
                        onTap: (){},
                        child: Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(Icons.event, color: Colors.red, size: 15.0,),
                                  SizedBox(width: 5,),
                                  Text(_eventList.defaultEvent, style: TextStyle(
                                    color: infotessColor,),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Text(_eventList.eventTitle, style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: newsListColor,
                                fontSize: 15.0,
                              ),),
                              SizedBox(height: 10.0,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.location_on, color: Colors.red, size: 15.0,),
                                            SizedBox(width: 5.0,),
                                            Text(_eventList.defaultLocation,
                                              style: TextStyle(
                                                  color: infotessColor),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 2.0,),
                                        Text(_eventList.location,
                                          style: TextStyle(
                                            color: newsListColor,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.attach_money, color: Colors.red, size: 15.0,),
                                        Text(_eventList.price,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                        ),)
                                      ],
                                    ) ,
                                  )

                                ],
                              ),
                              SizedBox(height: 10.0,),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.info_outline, color: Colors.red, size: 15.0,),
                                  SizedBox(width: 5.0,),
                                  Text(_eventList.defaultInformation, style: TextStyle(
                                      color: infotessColor
                                  ),),

                                ],
                              ),
                              Text(_eventList.information,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style: TextStyle(
                                color: newsListColor,
                              ),)
                            ],

                          ),
                        ),
                      ),
                    );
                  },
                childCount: ModelList.eventList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
