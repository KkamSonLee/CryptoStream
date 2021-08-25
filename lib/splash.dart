import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coinTickerParsing.dart';
import 'detailview.dart';
import 'main.dart';

void main() {
  runApp(SplashApp());
}

class SplashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          child: const Text(
            'CryptoStream',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontFamily: 'PretendardExtraBold',
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black54,
    );
  }
}
