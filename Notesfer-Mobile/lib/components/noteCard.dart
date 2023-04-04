import 'package:flutter/material.dart';
import 'package:mobile/model/note.dart';

Widget noteCard(Function()? onTap, Note nota) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nota.titulo),
          Text(nota.dataCadastro),
          Text(nota.nota),
        ],
      ),
    ),
  );
}
