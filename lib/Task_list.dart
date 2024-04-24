import 'package:flutter/material.dart';

import 'Task_tit.dart';

class Taskliste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTitle(),
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}
