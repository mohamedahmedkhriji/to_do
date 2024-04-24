import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback; // Updated type
  final Function() longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0), // Ajustez la taille de la tuile ici
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18.0, // Ajustez la taille du texte ici
          fontWeight: FontWeight.bold, // Rendre le texte en gras
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.yellowAccent[800],
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
