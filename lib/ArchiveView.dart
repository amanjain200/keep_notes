import 'package:flutter/material.dart';
import 'package:notes_app/CreateNoteView.dart';
import 'package:notes_app/NoteView.dart';
import 'package:notes_app/colors.dart';
import 'package:notes_app/sideMenuBar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ArchiveView extends StatefulWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  State<ArchiveView> createState() => _ArchiveViewState();
}

class _ArchiveViewState extends State<ArchiveView> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  String note =
      "THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE";
  String note1 = "THIS IS NOTE THIS IS NOTE ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateNoteView()));
        },
        backgroundColor: cardColor,
        child: Icon(Icons.add, size: 50,),
      ),
      endDrawerEnableOpenDragGesture: true,
      key: _drawerKey,
      drawer: SideMenuBar(),
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //search bar work start here
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: cardColor,
                    boxShadow: [
                      BoxShadow(
                          color: black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 3)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          //Menu Button in Search Bar
                          TextButton(
                            onPressed: () {
                              _drawerKey.currentState!.openDrawer();
                            },
                            child: Icon(
                              Icons.menu,
                              color: white,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 55,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Search Your Notes",
                                  style: TextStyle(
                                      color: white.withOpacity(0.5),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                            //user account and view change button in search bar
                            style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                        (states) => white.withOpacity(0.1)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(50)))),
                            onPressed: () {},
                            child: Icon(
                              Icons.grid_view_sharp,
                              color: white,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: white,
                            radius: 16,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                notesAllSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget notesAllSection() {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "ALL",
                  style: TextStyle(
                    color: white.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //height: MediaQuery.of(context).size.height,
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              shrinkWrap: true,
              itemCount: 20,
              crossAxisCount: 4,
              itemBuilder: (context, index) =>
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NoteView()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: white.withOpacity(0.4)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HEADING",
                            style: TextStyle(
                                color: white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            index.isEven ? note.length > 250 ? "${note.substring(
                                0, 250)}..." : note : note1,
                            style: TextStyle(color: white),
                          ),
                        ],
                      ),
                    ),
                  ),
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //height: MediaQuery.of(context).size.height,
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              shrinkWrap: true,
              itemCount: 20,
              crossAxisCount: 4,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:
                  index.isEven ? Colors.green[900] : Colors.blue[900],
                  border: Border.all(
                      color: index.isEven
                          ? Colors.green.withOpacity(0.4)
                          : Colors.blueAccent.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HEADING",
                      style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      index.isEven ? note.length > 250 ? "${note.substring(0,250)}..." : note : note1,
                      style: TextStyle(color: white),
                    ),
                  ],
                ),
              ),
              staggeredTileBuilder: (index) => StaggeredTile.fit(2),
            ),
          )
        ],
      ),
    );
  }




  Widget notesListSection(){
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "LIST VIEW",
                  style: TextStyle(
                    color: white.withOpacity(0.5),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: white.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HEADING",
                      style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      index.isEven ? note.length > 250 ? "${note.substring(0,250)}..." : note : note1,
                      style: TextStyle(color: white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            //height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color:
                  index.isEven ? Colors.green[900] : Colors.blue[900],
                  border: Border.all(
                      color: index.isEven
                          ? Colors.green.withOpacity(0.4)
                          : Colors.blueAccent.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HEADING",
                      style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      index.isEven ? note.length > 250 ? "${note.substring(0,250)}..." : note : note1,
                      style: TextStyle(color: white),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }





}
