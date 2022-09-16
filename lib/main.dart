import 'package:flutter/material.dart';
import 'package:todoey/models/Task_Data.dart';
import 'Screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/Task_Data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
