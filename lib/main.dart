import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String sound) => AudioCache().play(sound);
  Expanded buildKey(MaterialColor color, String music) => Expanded(
        child: RaisedButton(
          onPressed: () {
            playSound(music);
          },
          color: color,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 'note1.wav'),
              buildKey(Colors.orange, 'note2.wav'),
              buildKey(Colors.yellow, 'note3.wav'),
              buildKey(Colors.green, 'note4.wav'),
              buildKey(Colors.teal, 'note5.wav'),
              buildKey(Colors.blue, 'note6.wav'),
              buildKey(Colors.deepPurple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
