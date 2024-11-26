import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XyloApp());
}

class XyloApp extends StatelessWidget {
  const XyloApp({super.key});
  void fun(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Widget buildKey(Color ourColor, int note) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: ourColor,
          minimumSize: Size(double.infinity, 50),
          shape: const RoundedRectangleBorder(
            // Remove the rounded corners
            borderRadius: BorderRadius.zero, // This makes the edges sharp
          ),
        ),
        child: const SizedBox(
          height: 50, // specify the height
        ),
        onPressed: () {
          fun(note);
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
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.lightGreen, 4),
              buildKey(const Color.fromARGB(255, 24, 82, 26), 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
