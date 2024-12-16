// ignore_for_file: must_be_immutable

import 'package:chat/constant.dart';
import 'package:chat/pages/register_page.dart';
import 'package:chat/widgets/custom_buttom.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key});
  String id = "RegisterPage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              SizedBox(height: 75),

              Image.asset('assets/images/scholar.png', height: 100),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Scholar Chat',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Pacifico",
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

              Row(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 30),

              CustomTextField(
                hintText: "Email",
                label: Text(
                  "Enter Email",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30),

              CustomTextField(
                hintText: "Password",
                label: Text(
                  "Enter Password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30),

              CustomButtom(text: "Login"),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "dont`t have an account ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterPage.id);
                    },
                    child: Text(
                      "   Register",
                      style: TextStyle(color: Color(0xffC7EDE6)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
