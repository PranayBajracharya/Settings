import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 10),
      child: const TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: Colors.white),
          hintText: 'Search settings',
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Color.fromARGB(255, 100, 100, 100),
        ),
      ),
    );
  }
}