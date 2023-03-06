import 'package:authentication/view/screens/home_screen.dart';
import 'package:authentication/view/screens/login_screen.dart';
import 'package:authentication/view/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Authentication());
}

class Authentication extends StatelessWidget {
  const Authentication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Ubuntu"),
      routes: {
        "Login": (context) => LoginScreen(),
        "Signup": (context) => SignupScreen(),
        "Home": (context) => const HomeScreen(),
      },
      initialRoute: "Signup",
    );
  }
}
