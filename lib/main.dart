import 'package:flutter/material.dart';
import 'package:flutter_day_21/tasks/task_1.dart';
import 'package:flutter_day_21/tasks/task_2.dart';
import 'package:flutter_day_21/tasks/task_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageView(
        children: [
          const Task1(),
          Task2(),
          const Task3(),
        ],
      ),
    );
  }
}
