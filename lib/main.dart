import 'package:flutter/material.dart';
import 'package:settings/settings/settings.dart';

void main() {
  runApp(const SettingsApp());
}

class SettingsApp extends StatelessWidget {
  const SettingsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Settings(),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}