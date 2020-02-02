import 'package:flutter/material.dart';
import '../models/todo_item.dart';

class ToDoItemView extends StatelessWidget {
  final TodoItem item;
  final Function onCompleteTaskHandler;

  ToDoItemView(this.item, this.onCompleteTaskHandler);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: item.done ? Colors.green[100] : Colors.white,
      elevation: 10,
      child: Flexible(
        flex: 6,
        fit: FlexFit.tight,
        child: ListTile(
          title: Text(
            item.title,
            style: TextStyle(
              decoration:
                  item.done ? TextDecoration.lineThrough : TextDecoration.none,
            ),
          ),
          subtitle: Text(item.category),
          trailing: Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: FittedBox(
              fit: BoxFit.cover,
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
        ),
      ),
    );
  }
}
