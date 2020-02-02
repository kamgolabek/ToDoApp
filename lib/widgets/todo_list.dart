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
          color: item.done ? Colors.green[100] : Colors.white,
          elevation: 10,
          child: ListTile(
            title: Text(
              item.title,
              style: TextStyle(
                decoration: item.done ? TextDecoration.lineThrough : null,
              ),
            ),
            subtitle: Text(item.category),
            trailing: FittedBox(
              child: Row(
                children: <Widget>[
                  Checkbox(
                      value: item.done,
                      onChanged: (isDone) {
                        onCompleteTaskHandler(item.id, isDone);
                      }),
                  IconButton(icon: Icon(Icons.edit), onPressed: null),
                  IconButton(icon: Icon(Icons.delete), onPressed: null),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
