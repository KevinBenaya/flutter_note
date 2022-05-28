import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_note/models/models.dart';
import 'package:flutter_note/screen/screeen.dart';

void main() => runApp(const Note());

class Note extends StatelessWidget {
  const Note({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NoteScreen(),
      ),
    );
  }
}
