import 'package:flutter/material.dart';
import 'package:mobile/components/noteCard.dart';
import 'package:mobile/model/note.dart';

final List<Note> notas = [
  Note(
    1,
    "Teste1",
    "Pra consumir isso vai ser chato",
    DateTime.now().toString(),
    true,
  ),
  Note(
    2,
    "Teste 2 ",
    "Pra consumir isso vai ser chato",
    DateTime.now().toString(),
    true,
  ),
  Note(
    3,
    "Teste 4",
    "Pra consumir isso vai ser chato",
    DateTime.now().toString(),
    true,
  )
];

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});
  void _addNote() {
    print("Nota Adicionada");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: <Widget>[...notas.map((e) => noteCard(() {}, e))]),
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: Colors.greenAccent,
        onPressed: _addNote,
        child: const Icon(Icons.add),
      ),
    );
  }
}
