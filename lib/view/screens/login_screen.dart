import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_socialmedia.dart';
import '../widgets/custom_textbutton.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/subhead_text.dart';
import '../widgets/welcome_text.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final formKey = GlobalKey<FormState>();
  TextEditingController? mailController = TextEditingController();
  TextEditingController? passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const WelcomeText(),
                  const SizedBox(
                    height: 10,
                  ),
                  const SubtitleText(text: "log in"),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextFormField(
                    hint: "Email",
                    label: "Email",
                    controller: mailController!,
                    isPass: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    hint: "Password",
                    label: "Password (6-14)",
                    suffix: Icons.remove_red_eye_rounded,
                    controller: passController!,
                    isPass: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field is required";
                      } else if (6 > passController!.text.length &&
                          passController!.text.length < 14) {
                        return "password must be more than 6 letters and less than 14 letters";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(context, "Home");
                      }
                    },
                    text: "Log in",
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomeTextButton(
                        ontap: () {
                          Navigator.pop(context);
                        },
                        text: "Sign Up",
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "-or-",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey[700],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  const SocialMediaRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
