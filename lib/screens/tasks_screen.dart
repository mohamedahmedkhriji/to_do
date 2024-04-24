import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import '../widgets/tasks_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: 50.0, left: 40.0, right: 30.0, bottom: 20.0),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          child: Icon(
                            Icons.checklist_rtl,
                            size: 50.0,
                            color: Colors.yellow[900],
                          ),
                          backgroundColor: Colors.white,
                          radius: 30.0,
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Text(
                          'TO DO !',
                          style: TextStyle(
                            fontFamily: 'Inspiration',
                            color: Colors.yellow[700],
                            fontSize: 60.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${Provider.of<TaskData>(context).taskCount} Purchases',
                      style: TextStyle(
                        color: Colors.yellow[700],
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: TasksList(),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 50.0,
            left:
                60.0, // Ajustez cette valeur pour ajuster la position à gauche
            child: FloatingActionButton(
              backgroundColor: Colors.grey[900],
              child: Icon(
                Icons.add,
                color: Colors.yellow[800],
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: AddTaskScreen(),
                          ),
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
