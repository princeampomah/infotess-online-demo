import 'package:bottom_bar/popMenuScreens/about_us.dart';
import 'package:bottom_bar/popMenuScreens/privacy_policy.dart';
import 'package:flutter/material.dart';

var infotessColor = Color.fromRGBO(44, 21, 82, 1);
var scaffoldColor = Colors.grey[200];
var inkWellColor = Colors.grey[300];
var newsListColor = Colors.grey[700];
String infotessOnline = 'Infotess Online';
String infotessResources = 'Infotess Electoral Commission Disclaimer';


String motto1 = 'INFOTECH:';
String motto2 = 'Essential Tool For Development!!!';

String aboutUs = 'about_us';
String privacyPolicy = 'privacy_policy';

Widget popupMenuButton(BuildContext context){
  return PopupMenuButton(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        )
    ),
    color: Colors.grey[900],
    icon: Icon(Icons.more_vert, color: Colors.white,),
    itemBuilder: (context)=> <PopupMenuEntry<String>>[
      PopupMenuItem(
        value: aboutUs,
        child: Text('About Us',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      ),
      PopupMenuItem(
        value: privacyPolicy,
        child: Text('Privacy Policy',
          style: TextStyle(
              color: Colors.white
          ),
        ),
      )
    ],
    onSelected: (val){
      if(val == aboutUs){
        Navigator.push(context,
            MaterialPageRoute(
          builder: (context)=>AboutUs()
        ));
      }
      else{
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>PrivacyPolicy()
        ));
      }
    },
  );
}
