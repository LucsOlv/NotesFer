import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tarefas")),
      body: const Center(
        child: Text("Aqui vai ficar as Tarefas"),
      ),
    );
  }
}
