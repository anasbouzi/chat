import 'package:chat/constant.dart';
import 'package:chat/widgets/custom_buttom.dart';
import 'package:chat/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = "RegisterPage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Spacer(flex: 1),
              Image.asset('assets/images/scholar.png'),
              Text(
                'Scholar Chat',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Pacifico",
                  color: Colors.white,
                ),
              ),
              Spacer(flex: 2),
              Row(
                children: [
                  Text(
                    'Registration',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Spacer(flex: 1),
              CustomTextField(
                hintText: "Email",
                label: Text(
                  "Enter Email",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(flex: 1),
              CustomTextField(
                hintText: "Password",
                label: Text(
                  "Enter Password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Spacer(flex: 1),
              CustomButtom(text: "Register"),
              Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "have an account ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "   Login",
                      style: TextStyle(color: Color(0xffC7EDE6)),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
// GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return RegisterPage();
//                           },
//                         ),
//                       );
//                     },
//                     child: Text(
//                       "   Register",
//                       style: TextStyle(color: Color(0xffC7EDE6)),
//                     ),
//                   ),