import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      XylophoneApp(),
    );

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomButton(soundName: 'note1.wav', color: Colors.black),
              CustomButton(
                  soundName: 'note2.wav', color: Colors.black.withOpacity(0.9)),
              CustomButton(
                  soundName: 'note3.wav', color: Colors.black.withOpacity(0.8)),
              CustomButton(
                  soundName: 'note4.wav', color: Colors.black.withOpacity(0.7)),
              CustomButton(
                  soundName: 'note5.wav', color: Colors.black.withOpacity(0.6)),
              CustomButton(
                  soundName: 'note6.wav', color: Colors.black.withOpacity(0.5)),
              CustomButton(
                  soundName: 'note7.wav', color: Colors.black.withOpacity(0.4)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget CustomButton({@required String soundName, @required Color color}) {
  return Expanded(
    child: FlatButton(
      onPressed: () {
        final player = AudioCache();
        player.play(soundName);
      },
      child: Text(''),
      color: color,
    ),
  );
}
