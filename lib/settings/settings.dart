import 'package:flutter/material.dart';
import 'package:settings/settings/searchBar/searchBar.dart';
import 'package:settings/settings/settingsList/settingsList.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Settings"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SettingsList(),
          )
        ],
      ),
    );
  }
}