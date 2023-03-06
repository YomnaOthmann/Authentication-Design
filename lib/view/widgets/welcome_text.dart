import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Welcome",
      style: TextStyle(
        color: Colors.blue,
        fontSize: 36,
      ),
    );
  }
}
