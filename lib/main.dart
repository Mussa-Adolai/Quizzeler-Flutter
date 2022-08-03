// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quizzler(),
    ),
  );
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];
  List<String> questions = [
    'You can lead a cow down stairs but not up stairs .',
    'Approximately one quarter of human bones are in the feet  .',
    'A slug\'s blood is green.',
  ];
  int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                // 'This is where the question text will go ',
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                primary: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  questionNumber++;
                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              },
              child: Text(
                'true',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                primary: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  questionNumber++;

                  scoreKeeper.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              },
              child: Text(
                'false',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
