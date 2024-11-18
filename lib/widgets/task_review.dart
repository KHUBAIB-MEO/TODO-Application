import 'package:flutter/material.dart';

class TaskReview extends StatelessWidget {
  final List<Map<String, String>> tasks;
  final int index;
  const TaskReview({super.key, required this.tasks, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 56, 3, 91),
            Color.fromARGB(255, 36, 7, 72),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 50),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.transparent,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.title,
                        size: 35,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 289,
                        height: 70,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              "${tasks[index]["Title"]}",
                              style: const TextStyle(fontSize: 25),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 10),
                        child: Icon(Icons.notes),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 270,
                            height: 450,
                            color: Colors.transparent,
                            child: SingleChildScrollView(
                              child: Text(
                                "${tasks[index]["Task"]}",
                                style: const TextStyle(fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
