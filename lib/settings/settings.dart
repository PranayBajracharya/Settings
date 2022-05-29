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
        title: const Text("Settings"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SearchBar(),
              SettingsList(),
            ],
          ),
        ),
      ),
    );
  }
}