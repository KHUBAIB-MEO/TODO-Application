import 'package:flutter/material.dart';

class TitleTextfeild extends StatelessWidget {
  final TextEditingController titleController;
  const TitleTextfeild({super.key, required this.titleController});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 8.0, right: 8.0),
      child: TextField(
        controller: titleController,
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
            Icons.title,
            size: 30,
          ),
          hintText: "Title",
        ),
      ),
    );
  }
}
