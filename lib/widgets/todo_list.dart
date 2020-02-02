import 'package:flutter/material.dart';
import 'package:todoapp/models/todo_item.dart';

class ToDoList extends StatelessWidget {
  final List<TodoItem> items;
  final Function onCompleteTaskHandler;

  ToDoList(this.items, this.onCompleteTaskHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return Card(
          elevation: 10,
          child: ListTile(
            title: Text(item.title),
            subtitle: Text(item.category),
            trailing: Checkbox(
                value: item.done,
                onChanged: (isDone) {
                  onCompleteTaskHandler(item.id, isDone);
                }),
          ),
        );
      }).toList(),
    );
  }
}
