import 'package:flutter/material.dart';

class AreaOfATriangle extends StatelessWidget {
  const AreaOfATriangle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: AnimatedContainer(
        duration: const Duration(seconds: 3),
        child: const Text("Hello"),
      ),
    );
  }
}
