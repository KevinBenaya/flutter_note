import 'package:flutter/cupertino.dart';
import 'package:flutter_note/models/note.dart';

class NotesOperation with ChangeNotifier {
  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }

  NotesOperation() {
    addNewNote('First Note', 'First Note Description');
  }
  void addNewNote(String judul, String deskripsi) {
    Note note = Note(judul, deskripsi);
    _notes.add(note);
    notifyListeners();
  }
}
