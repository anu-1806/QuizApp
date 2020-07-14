import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(child: QuizApp()),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text('this is a question'),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.green,
                onPressed: () {},
                child: Text('TRUE'),
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text('FALSE'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
