import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(String note) {
    final audioPlayer = AudioCache();
    audioPlayer.play('$note.wav');
  }

  Expanded pianoTile({Color color, String note}) {
    return Expanded(
      child: FlatButton(
        child: Text(
          '$note',
          textAlign: TextAlign.center,
        ),
        color: color,
        onPressed: () {
          playSound(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              pianoTile(color: Colors.blue.shade100, note: 'c4'),
              pianoTile(color: Colors.blue.shade200, note: 'd4'),
              pianoTile(color: Colors.blue.shade300, note: 'e4'),
              pianoTile(color: Colors.blue.shade400, note: 'f4'),
              pianoTile(color: Colors.blue.shade500, note: 'g4'),
              pianoTile(color: Colors.blue.shade600, note: 'a4'),
              pianoTile(color: Colors.blue.shade700, note: 'b4'),
            ],
          ),
        ),
      ),
    );
  }
}
