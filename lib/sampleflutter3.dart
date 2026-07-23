import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child : ElevatedButton(
            //concept of onPressed is to define the action that will be performed when the button is pressed.
            onPressed: () {
              print("Button pressed");//look at the console to see the output when the button is pressed
            },
            child: const Text("Click me"),
          ),
        ),
      ),
    );
  }
}
