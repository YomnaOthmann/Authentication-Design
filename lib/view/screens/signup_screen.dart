import 'package:authentication/view/widgets/custom_button.dart';
import 'package:authentication/view/widgets/custom_socialmedia.dart';
import 'package:authentication/view/widgets/custom_textfield.dart';
import 'package:authentication/view/widgets/subhead_text.dart';
import 'package:authentication/view/widgets/welcome_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_textbutton.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController? userController = TextEditingController();
  TextEditingController? mailController = TextEditingController();
  TextEditingController? passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  SignupScreen({super.key});

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
                  const SubtitleText(text: "sign up"),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextFormField(
                    controller: userController!,
                    hint: "Username",
                    label: "User Name",
                    isPass: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "this field is required";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
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
                    text: "Sign Up",
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomeTextButton(
                        ontap: () {
                          Navigator.pushNamed(context, "Login");
                        },
                        text: "Log in",
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
