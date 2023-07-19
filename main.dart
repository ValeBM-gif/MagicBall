import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Color.fromRGBO(159, 132, 229, 1),
        ),
        body: MagicBallPage(),
      ),
    ),
  );
}

class MagicBallPage extends StatefulWidget {
  MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int imgNumber = 1;

  void sortNumber() {
    setState(() {
      imgNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          sortNumber();
        },
        child: Image.asset(
          'images/ball$imgNumber.png',
          height: 300,
        ),
      ),
    );
  }
}
