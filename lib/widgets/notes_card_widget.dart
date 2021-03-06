import 'package:flutter/material.dart';
import 'package:flutter_note/models/models.dart';

class NotesCard extends StatelessWidget {
  final Note note;

  const NotesCard(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.judul,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            note.deskripsi,
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
