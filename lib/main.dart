import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonText = 'Düğmeye Tıkla';

  void changeText() {
    setState(() {
      buttonText = 'Tıkladın!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(
        title: Text('Düğme Örneği'),
    ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Text(
    buttonText,
    style: TextStyle(fontSize: 24.0),
    ),
    SizedBox(height: 20.0),
    RaisedButton(
    onPressed:
