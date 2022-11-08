import 'dart:ui';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:keepnotes_clone/home.dart';
import 'NoteView.dart';
import 'CreateNoteView.dart';
import 'package:flutter/material.dart';

import 'SideMenuBar.dart';
import 'colors.dart';

class ArchiveView extends StatefulWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  _ArchiveViewState createState() => _ArchiveViewState();
}

class _ArchiveViewState extends State<ArchiveView> {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  String note =
      "THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE";
  String note1 = "THIS IS NOTE THIS IS NOTE THIS IS NOTE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ArchiveView()));
          },
          backgroundColor: cardColor,
          child: const Icon(
            Icons.add,
            size: 45,
          ),
        ),
        endDrawerEnableOpenDragGesture: true,
        key: _drawerKey,
        drawer: const SideMenu(),
        backgroundColor: bgColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              color: black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3)
                        ]),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    _drawerKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(
                                    Icons.menu,
                                    color: white,
                                  )),
                              const SizedBox(
                                width: 16,
                              ),
                              Container(
                                  height: 55,
                                  width: 200,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Search Your Notes",
                                          style: TextStyle(
                                              color: white.withOpacity(0.5),
                                              fontSize: 16),
                                        )
                                      ]))
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                TextButton(
                                    style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateColor.resolveWith(
                                                (states) =>
                                                    white.withOpacity(0.1)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                        ))),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.grid_view,
                                      color: white,
                                    )),
                                const SizedBox(
                                  width: 9,
                                ),
                                const CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ])),
                NoteSectionAll(),
                NotesListSection()
              ],
            ),
          ),
        )));
  }

  Widget NoteSectionAll() {
    return Container(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "ALL",
                style: TextStyle(
                    color: white.withOpacity(0.5),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: StaggeredGridView.countBuilder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                crossAxisCount: 4,
                staggeredTileBuilder: (index) => StaggeredTile.fit(2),
                itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NoteView()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: white.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(7)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("HEADING",
                                style:  TextStyle(
                                    color: white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              index.isEven
                                  ? note.length > 250
                                      ? "${note.substring(0, 250)}..."
                                      : note
                                  : note1,
                              style: const TextStyle(color: white),
                            )
                          ],
                        ),
                      ),
                    ))),
      ],
    ));
  }

  Widget NotesListSection() {
    return Container(
        child: Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "LIST VIEW",
                style: TextStyle(
                    color: white.withOpacity(0.5),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: white.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(7)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("HEADING",
                        style:  TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      index.isEven
                          ? note.length > 250
                              ? "${note.substring(0, 250)}..."
                              : note
                          : note1,
                      style: const TextStyle(color: white),
                    )
                  ],
                ),
              ),
            )),
      ],
    ));
  }
}
