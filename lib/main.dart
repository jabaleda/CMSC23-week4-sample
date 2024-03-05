import 'package:flutter/material.dart';
import 'package:w4_app/button.dart';
import 'package:w4_app/checkBox.dart';
import 'package:w4_app/textField.dart';
import 'package:w4_app/dropDown.dart';

void main() {
  runApp(RootWidget());
}

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.indigo)),
        home: Scaffold(
          body: FormSample(),
          backgroundColor: Colors.lightGreenAccent[100],
        ));
  }
}

class FormSample extends StatefulWidget {
  const FormSample({super.key});

  @override
  State<FormSample> createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  final _formKey = GlobalKey<FormState>();
  // final _formDD = GlobalKey
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Form(
            key: _formKey,
            child: Column(children: [
              checkBoxSample(),
              TextFieldSample(),
              ButtonSample(),
              DropDownSampleState(),
              Container(
                  margin: EdgeInsets.all(20),
                  child: OutlinedButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                        // _currentDDValue.currentState!.validate();
                      },
                      child: Text("Submit")))
            ]))

        // appBar: ,
        //   body: Column(
        // children: [checkBoxSample(), TextFieldSample(), ButtonSample(), DropDownSampleState()],
        );
  }
}
