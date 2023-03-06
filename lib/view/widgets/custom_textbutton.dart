import 'package:flutter/material.dart';

class CustomeTextButton extends StatelessWidget {
  const CustomeTextButton({super.key, required this.text, required this.ontap});
  final VoidCallback ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w500),
      ),
    );
  }
}
