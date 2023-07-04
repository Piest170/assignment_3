import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(AssignmentApp3());
}

class AssignmentApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue[600],
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int answerpoint = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
          ),
          Text('คุณกำลังลำบากใช่หรือไม่', 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30),
          ),
          Expanded(
              child: TextButton(
            child: Image.asset('images/ball$answerpoint.png'),
            onPressed: () {
              setState(() {
                answerpoint = Random().nextInt(5)+1;
              });
            },
          )),
        ],
      ),
    );
  }
}
