// ignore_for_file: prefer_const_constructors
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> colours = [
    Colors.white,
    Colors.teal,
    Colors.black,
    Colors.pink,
    Colors.red,
    Colors.purple
  ];
  int appBar = 0;
  int scaffold = 0;
  Random random = new Random();
  List<String> sounds = ["Kick.wav", 'Ride.wav', 'Snare.wav', 'Tom.wav'];
  int soundPosition = 0;
  final player = AudioPlayer();

  // String kick = "Kick.wav";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colours[appBar],
          centerTitle: true,
          title: IconButton(
            icon: Icon(Icons.refresh, color: Colors.red),
            onPressed: () {
              soundPosition = random.nextInt(4);
            },
          ),
        ),
        backgroundColor: colours[scaffold],
        body: MaterialButton(
          child: Image.asset('images/myDashatar.png'),
          onPressed: () {
            setState(() {
              // player.play(AssetSource(kick));
              player.play(AssetSource(sounds[soundPosition]));
              soundPosition =
                  (soundPosition + 1) % sounds.length; // Cycle through sounds
              appBar = random.nextInt(6);
              scaffold = random.nextInt(6);
            });
          },
        ),
      ),
    );
  }
}
