import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({required int soundNumber, required Color keyColor}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: keyColor),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(soundNumber: 1, keyColor: Colors.pink.shade300),
              buildKey(soundNumber: 2, keyColor: Colors.yellow.shade400),
              buildKey(soundNumber: 3, keyColor: Colors.teal.shade300),
              buildKey(soundNumber: 4, keyColor: Colors.redAccent),
              buildKey(soundNumber: 5, keyColor: Colors.purple.shade200),
              buildKey(soundNumber: 6, keyColor: Colors.greenAccent.shade400),
              buildKey(soundNumber: 7, keyColor: Colors.blueAccent.shade100),
            ],
          ),
        ),
      ),
    );
  }
}
