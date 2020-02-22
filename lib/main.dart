import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int key}) {
    final AudioCache player = AudioCache();
    player.play('note$key.wav');
  }

  Expanded myKey({int key, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(key: key);
        },
        color: color,
        padding: EdgeInsets.all(0),
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
              myKey(key: 1, color: Colors.red),
              myKey(key: 2, color: Colors.orange),
              myKey(key: 3, color: Colors.yellow),
              myKey(key: 4, color: Colors.lightGreenAccent),
              myKey(key: 5, color: Colors.green),
              myKey(key: 6, color: Colors.blue),
              myKey(key: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
