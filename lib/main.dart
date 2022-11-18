import 'package:flutter/material.dart';

import 'camera.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Homepage',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeeseReel'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Daily Photo'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TakePictureScreen()),
            );
          },
        ),
      ),
    );
  }
}
