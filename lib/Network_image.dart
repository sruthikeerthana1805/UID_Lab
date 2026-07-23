import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Network Image',
      home: const RandomImagePage(),
    );
  }
}

class RandomImagePage extends StatefulWidget {
  const RandomImagePage({super.key});

  @override
  State<RandomImagePage> createState() => _RandomImagePageState();
}

class _RandomImagePageState extends State<RandomImagePage> {
  late String imageUrl;

  @override
  void initState() {
    super.initState();
    imageUrl = _generateRandomImageUrl();
  }

  // picsum.photos serves a random image each time a new seed/id is used
  String _generateRandomImageUrl() {
    final randomId = Random().nextInt(1000); // random number 0-999
    return 'https://picsum.photos/seed/$randomId/400/400';
  }

  void _loadNewImage() {
    setState(() {
      imageUrl = _generateRandomImageUrl();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Network Image"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Network image with loading and error handling
            Image.network(
              imageUrl,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  width: 300,
                  height: 300,
                  child: Center(child: CircularProgressIndicator()),
                );
              },
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  width: 300,
                  height: 300,
                  child: Center(child: Text("Failed to load image")),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _loadNewImage,
              child: const Text("Load New Random Image"),
            ),
          ],
        ),
      ),
    );
  }
}