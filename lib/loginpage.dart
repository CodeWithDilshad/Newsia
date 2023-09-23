// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:newsia/Components/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:newsia/Carasoul.dart';
import 'package:newsia/Components/TextFields.dart';
import 'package:newsia/Register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.pink[300],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 50,
                  // ),
                  //logo
                  Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Text
                  Text(
                    "Welcome to the app",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MyTextField(
                    controller: emailTextController,
                    hintText: 'Enter Email',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Enter password',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width: 900,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyCarousel(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign In!",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // MyButton(
                  //   Ontap: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => MyCarousel(),
                  //       ),
                  //     );
                  //   },
                  //   text: 'Sign In!',
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Not a member?",
                        style: TextStyle(
                            // color: Colors.w,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyRegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Register Here!",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
