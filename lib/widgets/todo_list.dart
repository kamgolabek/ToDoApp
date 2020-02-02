import 'package:flutter/material.dart';
import 'package:todoapp/models/todo_item.dart';
import 'package:todoapp/widgets/todo_item_view.dart';
import 'package:intl/intl.dart';

class ToDoList extends StatelessWidget {
  final List<TodoItem> items;
  final Function onCompleteTaskHandler;

  ToDoList(this.items, this.onCompleteTaskHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.today, color: Colors.green),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.category,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.done_all,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.menu,
                  ),
                  onPressed: null),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          child: Text(
            'Tasks for: ${DateFormat.yMMMMd().format(DateTime.now())}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(12),
            child: Column(
              children: items.map((item) {
                return ToDoItemView(item, onCompleteTaskHandler);
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
