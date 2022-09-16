import 'package:flutter/material.dart';

class Task {
  late final String name;
  bool is_done;
  Task({required this.name, this.is_done = false});

  void toggleback() {
    is_done = !is_done;
  }
}
