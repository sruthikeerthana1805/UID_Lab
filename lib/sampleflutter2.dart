
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Flutter is awesome",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 212, 12, 69),
              fontWeight: FontWeight.bold,fontStyle: FontStyle.italic
              ) 
            ),
        ),
      ),
    );
  }
}
