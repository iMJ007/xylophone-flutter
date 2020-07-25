import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  bool isInfinite = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKeys(noteNumber: 1, color: Colors.red),
              buildKeys(noteNumber: 2, color: Colors.orange),
              buildKeys(noteNumber: 3, color: Colors.yellow),
              buildKeys(noteNumber: 4, color: Colors.green),
              buildKeys(noteNumber: 5, color: Colors.teal),
              buildKeys(noteNumber: 6, color: Colors.blue),
              buildKeys(noteNumber: 7, color: Colors.deepPurple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKeys({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: color,
      ),
    );
  }

  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }
}
