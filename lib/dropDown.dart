import 'package:flutter/material.dart';

class DropDownSampleState extends StatefulWidget {
  const DropDownSampleState({super.key});

  @override
  State<DropDownSampleState> createState() => __DropDownSampleStateState();
}

class __DropDownSampleStateState extends State<DropDownSampleState> {
  static final List<String> _animals = ["Choose an animal", "dog", "cat", "pig", "cow", "rat", "horse"];

  String _currentDDValue = _animals.first;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          DropdownButtonFormField<String>(
            validator: (val){
              if(_currentDDValue == _animals[0]) return "Please choose an animal.";
            },
              value: _currentDDValue,
              items: _animals.map((animals) {
                return DropdownMenuItem<String>(
                  child: Text(animals),
                  value: animals,
                );
              }).toList(),
              onChanged: (val) {
                setState() {
                  _currentDDValue = val!;
                }
              })
        ]));
  }
}
