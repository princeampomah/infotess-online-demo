import 'package:bottom_bar/model/model_list.dart';
import 'package:bottom_bar/shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Executives extends StatefulWidget {
  @override
  _ExecutivesState createState() => _ExecutivesState();
}

class _ExecutivesState extends State<Executives> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: infotessColor,
            title: Text('Infotess Elected Executives'),
            floating: false,
            pinned: false,
            actions: <Widget>[
              popupMenuButton(context),
            ],
          ),
         SliverList(
           delegate: SliverChildBuilderDelegate(
               (context, index){
                 final _execList = ModelList.executivesList[index];
                 return Card(
                   color: Colors.white,
                   elevation: 1.0,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(10),
                       topRight: Radius.circular(10),
                       bottomLeft: Radius.circular(10),
                       bottomRight: Radius.circular(10)
                     )
                   ),
                   margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
                   child: InkWell(
                     splashColor: inkWellColor,
                     onTap: (){},
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(10),
                           topRight: Radius.circular(10),
                           bottomLeft: Radius.circular(10),
                           bottomRight: Radius.circular(10)
                       ),
                     child: Padding(
                       padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: <Widget>[
                           CircleAvatar(
                             backgroundColor: Colors.white,
                             backgroundImage: AssetImage(_execList.image),
                             radius: 40,
                           ),
                           SizedBox(width: 27),
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text(_execList.name,
                                 style: TextStyle(
                                   fontWeight: FontWeight.w700,
                                   color: infotessColor,
                                   fontSize: 17.0,
                                 ),
                                 ),
                                 SizedBox(height: 7.0,),
                                 Text(_execList.portfolio,
                                   style: TextStyle(
                                     fontSize: 14.0,
                                     letterSpacing: 0.5,
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 );
               },
             childCount: ModelList.executivesList.length,
           ),
         )
        ],
      ),
    );
  }
}
