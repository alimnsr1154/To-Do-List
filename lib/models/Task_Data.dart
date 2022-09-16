import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy egg'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy milk')
  ];
  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  void add_task(String newtitle) {
    final task = Task(name: newtitle);
    _tasks.add(task);
    notifyListeners();
  }

  void task_update(Task task) {
    task.toggleback();
    notifyListeners();
  }

  void task_delete(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
