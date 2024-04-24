import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task TO DO'),
      trailing: Checkbox(
        onChanged: (),
        value: false,
      ),
    );
  }
}
