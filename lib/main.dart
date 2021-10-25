import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

void play(int Soundnumber){
  final player =AudioCache();
  player.play('note$Soundnumber.wav');

}

Expanded Buildkey({Color color,int Sound}) =>

  Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),

      onPressed: (){
        play(Sound);
      },
      // child: Text('TextButton'),
    ),
  );




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buildkey(color: Colors.red,Sound: 1),
              Buildkey(color: Colors.orange,Sound: 2),
              Buildkey(color: Colors.yellow,Sound: 3),
              Buildkey(color: Colors.green,Sound: 4),
              Buildkey(color: Colors.teal,Sound: 5),
              Buildkey(color: Colors.blue,Sound: 6),
              Buildkey(color: Colors.purple,Sound: 7),


            ],
              ),
            ),
          ),

    );
  }
}
