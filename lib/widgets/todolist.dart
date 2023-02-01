import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/material.dart';


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
      title: Text("Go to gym",style: TextStyle(
        decoration: (selected)?TextDecoration.lineThrough:null
      ),),
      leading: CircularCheckBox(
        value: this.selected,
        onChanged: (val) {
          this.selected = !this.selected;
        },
        checkColor: Colors.black,
        activeColor: Colors.yellow,
        inactiveColor: Colors.grey,
        disabledColor: Colors.yellow,
      ),
    );
  }
}
