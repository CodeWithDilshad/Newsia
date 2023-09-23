import 'package:flutter/material.dart';
import 'package:newsia/Register.dart';
import 'package:newsia/loginpage.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool ShowLoginPage = true;

  // This is for toggle pages

  void togglePages() {
    setState(() {
      ShowLoginPage = !ShowLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ShowLoginPage) {
      return LoginPage();
    } else {
      return MyRegisterPage();
    }
  }
}
