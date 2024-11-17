import 'package:flutter/material.dart';

class ContentTextField extends StatelessWidget {
  const ContentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 8.0, right: 8.0),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          TextField(
            expands: true,
            maxLines: null,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(top: 15, left: 50), // Adjust padding
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: "Notes",
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Icon(
              Icons.notes,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
