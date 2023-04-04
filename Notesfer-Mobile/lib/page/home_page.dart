import 'package:flutter/material.dart';
import 'package:mobile/page/config_page.dart';
import 'package:mobile/page/notes_page.dart';
import 'package:mobile/page/tasks_page.dart';
import 'package:mobile/page/user_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorPadding: EdgeInsets.all(5.0),
            indicator: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            tabs: [
              Tab(icon: Icon(Icons.note_alt)),
              Tab(icon: Icon(Icons.task_alt)),
              Tab(icon: Icon(Icons.verified_user)),
              Tab(icon: Icon(Icons.get_app_sharp)),
            ],
          ),
          body: TabBarView(children: [
            NotesPage(),
            TasksPage(),
            UserPage(),
            ConfigPage(),
          ]),
        ));
  }
}
