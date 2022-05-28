import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_note/models/models.dart';
import 'package:flutter_note/widgets/widgets.dart';
import 'package:flutter_note/screen/screeen.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddScreen(),
            ),
          );
        },
        child: const Icon(Icons.add, size: 30, color: Colors.blueGrey),
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: const Text(
          'KelasKu',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Consumer<NotesOperation>(
        builder: (context, NotesOperation data, child) {
          return ListView.builder(
            itemCount: data.getNotes.length,
            itemBuilder: (context, index) {
              return NotesCard(data.getNotes[index]);
            },
          );
        },
      ),
    );
  }
}
