import 'package:flutter/material.dart';

class ButtonSample extends StatefulWidget {
  const ButtonSample({super.key});

  State<ButtonSample> createState() => _ButtonSampleState();
  // TODO: implement createState
}

class _ButtonSampleState extends State<ButtonSample> {
  List<String> _animals = ["dog", "cat", "pig", "cow", "rat", "horse"];

  List<Text> _animalsTextWidget = [];
  int _counter = 0;

  void _addAnimal() {
    setState() {
      _animalsTextWidget.add(Text(_animals[_counter++]));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            ElevatedButton(
              onPressed: _addAnimal,
              child: Icon(Icons.airplane_ticket_sharp),
            ),
            Column(
              children: _animalsTextWidget,
            )
          ],
        ));
  }
}
