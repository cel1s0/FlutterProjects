import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundId) {
    final player = AudioCache();
    player.play('note$soundId.wav');
  }

  Expanded buildKey({required int id, required Color color}) {
    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(id);
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
            children: [
              buildKey(id: 1, color: Colors.red),
              buildKey(id: 2, color: Colors.orange),
              buildKey(id: 3, color: Colors.yellow),
              buildKey(id: 4, color: Colors.green),
              buildKey(id: 5, color: Colors.teal),
              buildKey(id: 6, color: Colors.blue),
              buildKey(id: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
