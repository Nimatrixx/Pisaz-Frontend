import 'package:flutter/material.dart';

void main() {
  runApp(const Pisaz());
}

class Pisaz extends StatelessWidget {
  const Pisaz({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
