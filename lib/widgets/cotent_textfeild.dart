import 'package:flutter/material.dart';

class ContentTextField extends StatelessWidget {
  final TextEditingController contentController;
  const ContentTextField({super.key, required this.contentController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8.0, right: 8.0),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          TextField(
            controller: contentController,
            expands: true,
            maxLines: null,
            textAlignVertical: TextAlignVertical.top,
            decoration: const InputDecoration(
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
          const Positioned(
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
