import 'package:flutter/material.dart';
import 'colors.dart';

class NoteView extends StatefulWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NoteViewState createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  String note =
      "THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE THIS IS NOTE";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0.0,
        actions: [
          IconButton(
              splashRadius: 17,
              onPressed: () {},
              icon: const Icon(Icons.push_pin_outlined)),
          IconButton(
              splashRadius: 17,
              onPressed: () {},
              icon: const Icon(Icons.archive_outlined)),
          IconButton(
              splashRadius: 17,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditNoteView()));
              },
              icon: const Icon(Icons.edit_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "HEADING",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            note,
            style: const TextStyle(color: Colors.white),
          )
        ]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  EditNoteView() {}
}
