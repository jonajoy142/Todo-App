import 'package:flutter/material.dart';
// import 'package:circularbox/circularbox.dart';
// import 'package:roundcheckbox/roundcheckbox.dart';

class TodoItems extends StatefulWidget {
  const TodoItems({super.key});

  @override
  State<TodoItems> createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Go to gym",
        style: TextStyle(
            decoration: (selected) ? TextDecoration.lineThrough : null),
      ),
      leading: Text("data")
    );
  }
}
