import 'package:flutter/material.dart';

import 'colors.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EditNoteViewState createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
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
              icon: const Icon(Icons.save_outlined))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            TextField(
              cursorColor: white,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "Title",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.withOpacity(0.8))),
            ),
            SizedBox(
              height: 300,
              child: TextField(
                cursorColor: white,
                keyboardType: TextInputType.multiline,
                minLines: 50,
                maxLines: null,
                style: const TextStyle(fontSize: 17, color: Colors.white),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Note",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(0.8))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
