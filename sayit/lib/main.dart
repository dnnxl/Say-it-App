import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Say it'),
          backgroundColor: Colors.red,
        ),
        body: SayItApp(),
      ),
    );
  }
}

class SayItApp extends StatefulWidget {
  @override
  _SayItApp createState() => _SayItApp();
}

class _SayItApp extends State<SayItApp> {
  int leftNumber = 5;
  int rightNumber = 1;

  void changeFace() {
    setState(() {
      leftNumber = Random().nextInt(6) + 1;
      rightNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
            child: FlatButton(
          onPressed: () {
            changeFace();
          },
          child: Image.asset('images/dice$leftNumber.png'),
        )),
        Expanded(
          child: FlatButton(
            onPressed: () {
              changeFace();
            },
            child: Image.asset('images/dice$rightNumber.png'),
          ),
        )
      ],
    ));
  }
}
