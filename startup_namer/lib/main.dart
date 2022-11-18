import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); // Add this line.
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(                          // Drop the const, and
          //child: Text('Hello World'),        // Replace this text...
          child: Text(wordPair.asPascalCase,
              style: TextStyle(fontSize: 50)),
          // With this text.
        ),
      ),
    );
  }
}

