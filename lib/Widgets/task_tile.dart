import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  late bool is_checked;
  late final String task_title;
  late Function(bool?) box_call_back;
  late VoidCallback longpress_call_back;
  TaskTile(
      {required this.is_checked,
      required this.task_title,
      required this.box_call_back,
      required this.longpress_call_back});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpress_call_back,
      title: Text(
        task_title,
        style: TextStyle(
            decoration: is_checked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: is_checked,
        onChanged: box_call_back,
      ),
    );
  }
}
