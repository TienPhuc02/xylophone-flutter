import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var listColor = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blueGrey,
    Colors.tealAccent,
  ];
  final player = AudioPlayer();
  void playSound(String path) async {
    await player.play(AssetSource(path));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Xylophone"),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              for (var i = 1; i < listColor.length; i++)
                Expanded(
                  child: Container(
                    color: listColor[i],
                    child: GestureDetector(
                      child: Text('Note$i'),
                      onTap: () {
                        playSound("note$i.wav");
                      },
                    ),
                  ),
                ),

              // Expanded(
              //   child: Container(
              //     color: Colors.green,
              //     child: GestureDetector(
              //       child: const Text("Note2"),
              //       onTap: () {
              //         playSound("note2.wav");
              //       },
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.yellow,
              //     child: GestureDetector(
              //       child: const Text("Note3"),
              //       onTap: () {
              //         playSound("note3.wav");
              //       },
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.tealAccent,
              //     child: GestureDetector(
              //       child: const Text("Note4"),
              //       onTap: () {
              //         playSound("note4.wav");
              //       },
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.white,
              //     child: GestureDetector(
              //       child: const Text("Note5"),
              //       onTap: () {
              //         playSound("note5.wav");
              //       },
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: Container(
              //     color: Colors.red,
              //     child: GestureDetector(
              //       child: const Text("Note6"),
              //       onTap: () {
              //         playSound("note6.wav");
              //       },
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
