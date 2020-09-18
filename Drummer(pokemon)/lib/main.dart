// Importação do pacote AudioCache
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              width: 90,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  var player = AudioCache();
                  player.play('006.wav');
                },
                child: Image.asset('images/006.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  var player = AudioCache();
                  player.play('018.wav');
                },
                child: Image.asset('images/018.png'),
              ),
            ),
            SizedBox(
              width: 90,
              height: 120,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  var player = AudioCache();
                  player.play('Pikachu.wav');
                },
                child: Image.asset('images/025.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('026.wav');
                },
                child: Image.asset('images/026.png'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 90,
              height: 120,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('038.wav');
                },
                child: Image.asset('images/038.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('054.wav');
                },
                child: Image.asset('images/054.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('059.wav');
                },
                child: Image.asset('images/059.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('065.wav');
                },
                child: Image.asset('images/065.png'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 90,
              height: 120,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('094.wav');
                },
                child: Image.asset('images/094.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('123.wav');
                },
                child: Image.asset('images/123.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('130.wav');
                },
                child: Image.asset('images/130.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('143.wav');
                },
                child: Image.asset('images/143.png'),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 90,
              height: 120,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('149.wav');
                },
                child: Image.asset('images/149.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('151.wav');
                },
                child: Image.asset('images/151.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('202.wav');
                },
                child: Image.asset('images/202.png'),
              ),
            ),
            SizedBox(
              width: 90,
              child: FlatButton(
                onPressed: () {
                  var player = AudioCache();
                  player.play('209.wav');
                },
                child: Image.asset('images/209.png'),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
