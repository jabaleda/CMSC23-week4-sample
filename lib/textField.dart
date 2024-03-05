import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  const TextFieldSample({super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSample();
}

class _TextFieldSample extends State<TextFieldSample> {
  String _textValue = "";
  final _controller = TextEditingController();

  

  @override
  void initState() {
    _controller.addListener(() {
      setState(
        () {
          _textValue = _controller.text;
        },
      );
    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          TextFormField(
            onSaved: (val) {
              print("Text here: $_textValue");
            },
            validator: (val) {
              if (_textValue.isEmpty) return "Enter a text";
            },
            controller: _controller,
          )
          // TextField(
          //     controller: _controller,
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(),
          //       labelText: "Enter your name",
          //     ))
        ]));
  }
}
