import 'package:bottom_bar/model/model_list.dart';
import 'package:bottom_bar/shared.dart';
import 'package:flutter/material.dart';

class Constitution extends StatefulWidget {
  @override
  _ConstitutionState createState() => _ConstitutionState();
}

class _ConstitutionState extends State<Constitution> {
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
                  final _constList = ModelList.consList[index];
                  return Card(
                    margin: EdgeInsets.fromLTRB(5.0, 3.0, 5.0, 3.0),
                    child: InkWell(
                      splashColor: inkWellColor,
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(_constList.title,
                          style: TextStyle(
                            fontSize: 20.0,
                          ),),
                          subtitle: Text(_constList.subTitle,
                          style: TextStyle(
                            fontSize: 17.0
                          ),),
                        ),
                      ),
                    ),
                  );
                },
              childCount: ModelList.consList.length,
            ),
          )
        ],
      ),
    );
  }
}
