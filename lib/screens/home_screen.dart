import 'package:flutter/material.dart';
import 'package:todo_application/widgets/bottom_app_bar.dart';
import 'package:todo_application/widgets/home_text_feild.dart';
import 'package:todo_application/widgets/task_show_widget.dart';

List<Map<String, String>> mainTasks = [];

class HomeScreen extends StatelessWidget {
  // Make sure to pass a mutable list from the calling screen
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //print("Tasks List: $mainTasks");

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
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
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 50,
                child: HomeTextFeild(),
              ),
              const SizedBox(
                height: 50,
              ),
              mainTasks.isEmpty
                  ? Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.transparent,
                        height: 556,
                        child: const Center(
                          child: Text(
                            "No Task to complete",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  : Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.transparent,
                        height: 586,
                        child: ListView.builder(
                          itemCount: mainTasks.length,
                          itemBuilder: (context, index) {
                            return taskShow(mainTasks, index);
                          },
                        ),
                      ),
                    ),
            ],
          ),
          bottomNavigationBar: bottomAppBar(context, mainTasks),
        ),
      ),
    );
  }
}
