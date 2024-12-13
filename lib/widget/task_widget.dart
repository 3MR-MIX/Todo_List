import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String taskwidget;

  const TaskWidget({required this.taskwidget});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskwidget,
        style: TextStyle(decoration: TextDecoration.none),
      ),
    );
  }
}
