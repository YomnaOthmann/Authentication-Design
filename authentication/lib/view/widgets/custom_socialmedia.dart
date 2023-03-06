import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/twitter.png",
            )),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/instagram.png",
            )),
        IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/facebook.png",
            ))
      ],
    );
  }
}
