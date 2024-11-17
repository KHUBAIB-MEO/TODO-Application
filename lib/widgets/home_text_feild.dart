import 'package:flutter/material.dart';

class HomeTextFeild extends StatelessWidget {
  HomeTextFeild({super.key});
  final TextEditingController searchTasks = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: TextField(
          controller: searchTasks,
          decoration: const InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            prefixIcon: Icon(
              Icons.search,
              size: 30,
            ),
            hintText: "Search notes",
          ),
        ),
      ),
    );
  }
}
