import 'package:flutter/material.dart';

import 'coinTickerParsing.dart';
import 'main.dart';

class DetailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoStream',
      theme: ThemeData(),
      home: DetailPage(),
    );
  }
}

class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  final myDetailPageController = TextEditingController();
  bool star = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          '도지코인(DOGE/KRW)',
          style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontFamily: 'PretendardBlack',
              fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
          icon: Image.asset('images/backbtn.png'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        ),
        actions: [
          IconButton(
            icon: star == false
                ? Image.asset('images/favoritebtn.png')
                : Image.asset('images/favoritestarbtn.png'),
            onPressed: () => setState(() {
              star = !star;
            }),
          ),
          IconButton(
            icon: Image.asset('images/notibtn.png'),
            onPressed: () => showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(content: Text('지정가 알림'));
              },
            ),
          ),
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(icon: Image.asset('images/infobtn.png'), onPressed: null),
        ],
      ),
    );
  }
}
