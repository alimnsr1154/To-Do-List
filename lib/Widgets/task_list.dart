import 'package:flutter/material.dart';
import 'package:todoey/Widgets/task_tile.dart';
import 'package:todoey/models/Task_Data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, data, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task = data.tasks[index];
            return TaskTile(
              task_title: Task.name,
              is_checked: Task.is_done,
              box_call_back: (check) {
                data.task_update(Task);
              },
              longpress_call_back: () {
                data.task_delete(Task);
              },
            );
          },
          itemCount: data.tasks.length,
        );
      },
    );
  }
}
