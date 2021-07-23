import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(keyNumber: 1, keyColor: Colors.red),
              buildKey(keyNumber: 2, keyColor: Colors.orange),
              buildKey(keyNumber: 3, keyColor: Colors.yellow),
              buildKey(keyNumber: 4, keyColor: Colors.green),
              buildKey(keyNumber: 5, keyColor: Colors.blue),
              buildKey(keyNumber: 6, keyColor: Colors.indigo),
              buildKey(keyNumber: 7, keyColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildKey({@required int keyNumber, @required Color keyColor}) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: keyColor,
        child: TextButton(
          onPressed: () {
            play(keyNumber);
          },
        ),
      ),
    );
  }

  void play(int chordNumber) {
    final player = AudioCache();
    player.play('note$chordNumber.wav');
  }
}
