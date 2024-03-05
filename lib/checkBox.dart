import 'package:flutter/material.dart';

class checkBoxSample extends StatefulWidget {
  const checkBoxSample({super.key});

  @override
  State<checkBoxSample> createState() => _checkBoxSampleState();
}

class _checkBoxSampleState extends State<checkBoxSample> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
                value: _isChecked,
                onChanged: (val) {
                  setState(() {
                    _isChecked = val;
                  });
                })
          ],
        ));
  }
}
