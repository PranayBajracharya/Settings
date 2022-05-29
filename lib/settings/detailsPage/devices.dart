import 'package:flutter/material.dart';

class Devices extends StatelessWidget {
  const Devices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text("Connected devices"),
        backgroundColor: Colors.black,
      ),
    );
  }
}