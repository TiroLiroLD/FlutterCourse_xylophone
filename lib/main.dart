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
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      play(1);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      play(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      play(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: TextButton(
                    onPressed: () {
                      play(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: TextButton(
                    onPressed: () {
                      play(5);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.indigo,
                  child: TextButton(
                    onPressed: () {
                      play(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: TextButton(
                    onPressed: () {
                      play(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void play(int chordNumber) {
    final player = AudioCache();
    player.play('note$chordNumber.wav');
  }
}
