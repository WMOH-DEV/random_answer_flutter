import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Answer',
      home: RandomAnswer(),
    );
  }
}

class RandomAnswer extends StatefulWidget {
  @override
  _RandomAnswerState createState() => _RandomAnswerState();
}

class _RandomAnswerState extends State<RandomAnswer> {
  List theAnswer = [
    'The Answer will be here',
    'Yes Of course',
    'Maybe, just try',
    'No, I think this is bad idea',
    'later not now',
    'I don\'t know',
    'Great idea',
    'Bad !!',
    'Wow, dont hesitate',
    'give it a shot'
  ];

  int randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text('Answer Any thing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              theAnswer[randomNumber],
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 40),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12.0),
                primary: Colors.blue,
                backgroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                setState(() {
                  randomNumber = Random().nextInt(theAnswer.length - 1) + 1;
                });
              },
              child: Text(
                'Click Me',
              ),
            ),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                setState(() {
                  randomNumber = 0;
                });
              },
              icon: Icon(
                Icons.refresh,
                size: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
