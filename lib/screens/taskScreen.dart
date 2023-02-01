import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/widgets/todolist.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(40))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    FontAwesomeIcons.barsStaggered,
                  ),
                  SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 120, bottom: 10),
                    child: Text(
                      "TASK",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return TodoItems();
          }))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
