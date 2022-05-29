import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({Key? key}) : super(key: key);

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
        title: const Text("Apps & notitications"),
        backgroundColor: Colors.black,
      ),
    );
  }
}