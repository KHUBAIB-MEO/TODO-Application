import 'package:flutter/material.dart';
import 'package:todo_application/screens/home_screen.dart';
import 'package:todo_application/widgets/cotent_textfeild.dart';
import 'package:todo_application/widgets/title_textfeild.dart';

class AddTaskScreen extends StatelessWidget {
  final List<Map<String, String>> tasks;
  final bool? isEdit;
  final int? index;
  AddTaskScreen({super.key, required this.tasks, this.isEdit, this.index});

  final TextEditingController taskTitle = TextEditingController();
  final TextEditingController taskContent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("159357 $isEdit");
    if (isEdit == true) {
      taskTitle.text = tasks[index!]["Title"]!;
      taskContent.text = tasks[index!]["Task"]!;
    }
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
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            "Add Task",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 100,
                child: TitleTextfeild(
                  titleController: taskTitle,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: ContentTextField(contentController: taskContent),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (taskTitle.text.isNotEmpty ||
                        taskContent.text.isNotEmpty) {
                      // Adding task to the mutable list
                      if (isEdit == true) {
                        tasks[index!]["Title"] = taskTitle.text;
                        tasks[index!]["Task"] = taskContent.text;
                      } else {
                        tasks.add(
                          {
                            "Title": taskTitle.text,
                            "Task": taskContent.text.toString(),
                          },
                        );
                      }
                    }
                    // print(tasks);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  child: isEdit != true
                      ? const Text(
                          "Add Task",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      : const Text(
                          "Update Task",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
