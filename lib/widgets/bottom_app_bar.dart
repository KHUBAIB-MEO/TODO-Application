import 'package:flutter/material.dart';
import 'package:todo_application/screens/add_task_screen.dart';

BottomAppBar bottomAppBar(BuildContext context) {
  return BottomAppBar(
    color: Colors.transparent,
    child: Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 60,
        width: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Center(
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddTaskScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.add,
                size: 40,
              )),
        ),
      ),
    ),
  );
}
