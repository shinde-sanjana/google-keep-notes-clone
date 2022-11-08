import 'package:flutter/material.dart';

import 'colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
          backgroundColor: bgColor,
          elevation: 0.0,
          title: const Text("Settings")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Sync",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Spacer(),
                Transform.scale(
                  scale: 1.3,
                  child: Switch.adaptive(
                      value: value,
                      onChanged: (switchValue) {
                        setState(() {
                          value = switchValue;
                        });
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
