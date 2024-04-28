import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

//! Method to update sound and play it
void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(
    AssetSource('note$soundNumber.wav'),
  );
}

//! Method that hold our expanded widget
Expanded buildKey({int soundNumber = 0, Color? color}) {
  return Expanded(
    child: GestureDetector(
      onTap: () {
        playSound(soundNumber);
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: 200,
        color: color,
      ),
    ),
  );
}

class _XylophonePageState extends State<XylophonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.orange),
              buildKey(soundNumber: 3, color: Colors.yellow),
              buildKey(soundNumber: 4, color: Colors.green),
              buildKey(soundNumber: 5, color: Colors.teal),
              buildKey(soundNumber: 6, color: Colors.blue),
              buildKey(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
