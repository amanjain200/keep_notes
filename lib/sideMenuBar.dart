//import 'dart:js';
import 'package:notes_app/ArchiveView.dart';
import 'main.dart';
import 'Settings.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/Settings.dart';
import 'package:notes_app/colors.dart';


class SideMenuBar extends StatefulWidget {
  const SideMenuBar({Key? key}) : super(key: key);

  @override
  State<SideMenuBar> createState() => _SideMenuBarState();
}

class _SideMenuBarState extends State<SideMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Text("Google Keep", style: TextStyle(color: white, fontSize: 25, fontWeight: FontWeight.bold),)),
              Divider(
                color: white.withOpacity(0.3),
              ),
              sectionNotes(),
              SizedBox(height: 5,),
              sectionArchive(),
              SizedBox(height: 5,),
              sectionSetting(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sectionNotes(){
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orangeAccent.withOpacity(0.3)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ))),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(Icons.lightbulb,
                size: 30,
                color: white.withOpacity(0.8),),
              SizedBox(
                width: 15,
              ),
              Text("Notes", style: TextStyle(fontSize: 20, color: white.withOpacity(0.8)),)
            ],),
        )
    ),
  );
}


Widget sectionArchive(){
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: TextButton(
        style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.orangeAccent.withOpacity(0.3)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ))),
        onPressed: () {
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ArchiveView()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(Icons.archive_outlined,
                size: 30,
                color: white.withOpacity(0.8),),
              SizedBox(
                width: 15,
              ),
              Text("Archive", style: TextStyle(fontSize: 20, color: white.withOpacity(0.8)),)
            ],),
        )
    ),
  );
}



Widget sectionSetting(){
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: TextButton(
        style: ButtonStyle(
          //backgroundColor: MaterialStateProperty.all(Colors.orangeAccent.withOpacity(0.3)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                ))),
        onPressed: () {
          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settings()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(Icons.settings_outlined,
                size: 30,
                color: white.withOpacity(0.8),),
              SizedBox(
                width: 15,
              ),
              Text("Settings", style: TextStyle(fontSize: 20, color: white.withOpacity(0.8)),)
            ],),
        )
    ),
  );
}


