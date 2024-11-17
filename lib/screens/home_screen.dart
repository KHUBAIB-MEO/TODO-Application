import 'package:flutter/material.dart';
import 'package:todo_application/widgets/bottom_app_bar.dart';
import 'package:todo_application/widgets/home_text_feild.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  height: 20,
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      height: 586,
                      child: const SingleChildScrollView(
                        child: Column(
                          children: [],
                        ),
                      )),
                )
              ],
            ),
            bottomNavigationBar: bottomAppBar(context)),
      ),
    );
  }
}
