import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  dynamic fun(text, color) {
    return TextSpan(
      text: '$text',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: 5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.brown[900],
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.music_note,
                  color: Colors.red,
                  size: 50,
                ),
                RichText(
                  text: TextSpan(children: [
                    fun('X', Colors.red),
                    fun('Y', Colors.orange),
                    fun('L', Colors.yellow),
                    fun('O', Colors.green),
                    fun('P', Colors.blue),
                    fun('H', Colors.indigo),
                    fun('O', Colors.purple),
                    fun('N', Colors.pinkAccent),
                    fun('E', Colors.brown),
                  ]),
                ),
                Icon(
                  Icons.graphic_eq,
                  color: Colors.red,
                  size: 50,
                ),
              ],
            )),
        body: Music(),
      ),
    );
  }
}

class Music extends StatefulWidget {
  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  void audioplayer(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }
  dynamic fittile(num,c)
  {
    return
    Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(10),
          width: double.infinity,
        child: RaisedButton(
          elevation: 9,
          color: c,
          onPressed: () {
            audioplayer(num);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          fittile(1,Colors.red),
        
        fittile(2,Colors.orange),
          fittile(3,Colors.yellow),
          fittile(4,Colors.green),
          fittile(5,Colors.blue),
          fittile(6,Colors.indigo),
          fittile(7,Colors.purple),


        ],
      ),
    );
  }
}
