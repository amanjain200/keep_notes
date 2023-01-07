import 'package:flutter/material.dart';
import 'package:notes_app/EditNoteView.dart';
import 'package:notes_app/colors.dart';

class NoteView extends StatefulWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  String note =
      "THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        actions: [
          IconButton(
              splashRadius: 20,
              onPressed: (){},
              icon: Icon(Icons.push_pin_outlined)
          ),
          IconButton(
              splashRadius: 20,
              onPressed: (){},
              icon: Icon(Icons.archive_outlined)
          ),
          IconButton(
              splashRadius: 20,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditNoteView()));
              },
              icon: Icon(Icons.edit_outlined)
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Heading", style: TextStyle(color: white, fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text(note, style: TextStyle(color: white, fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
