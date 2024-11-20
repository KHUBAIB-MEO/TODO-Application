import 'package:flutter/material.dart';
import 'package:todo_application/screens/home_screen.dart';
import 'package:todo_application/widgets/task_review.dart';

Widget taskShow(
    List<Map<String, String>> tasks, int index, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TaskReview(
              tasks: tasks,
              index: index,
            ),
          ));
    },
    onLongPress: () {
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 100,
                    color: Colors.transparent,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(Icons.edit),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      tasks.removeAt(index);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                          (route) => false);
                    },
                    child: Container(
                      width: 300,
                      height: 100,
                      color: Colors.transparent,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Delete",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Icon(Icons.delete),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: (Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Icon(
                      Icons.title,
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 270,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      "${tasks[index]["Title"]}",
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Icon(
                      Icons.notes,
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 270,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Text(
                      "${tasks[index]["Task"]}",
                      style: const TextStyle(fontSize: 15),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    ),
  );
}
