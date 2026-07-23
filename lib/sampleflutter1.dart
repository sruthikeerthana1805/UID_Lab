
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Container Example"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.amber,
          child: const Center(
            child: Text(
              "hello flutter",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ),
      ),
    ),
  ));
}
