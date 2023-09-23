// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:newsia/Components/Buttons.dart';
import 'package:newsia/Components/TextFields.dart';
import 'package:newsia/loginpage.dart';

class MyRegisterPage extends StatefulWidget {
  // final Function? onTap;

  const MyRegisterPage({
    super.key,
  });

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  final emailTextController = TextEditingController();
  final passwordController = TextEditingController();
  final ConfirPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register Page"),
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
                  Icon(
                    Icons.lock,
                    size: 100,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // Text
                  Text(
                    "Let's create your account!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // This is for email
                  MyTextField(
                    controller: emailTextController,
                    hintText: 'Enter Email',
                    obscureText: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // This is for password
                  MyTextField(
                    controller: passwordController,
                    hintText: 'Enter password',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // This is for donfirm password
                  MyTextField(
                    controller: ConfirPasswordController,
                    hintText: 'Confirm password',
                    obscureText: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
        
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 40,
                    width: 900,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Register!",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // MyButton(
                  //   Ontap: () {},
                  //   text: 'Sign Up!',
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ALready Have an account?",
                        style: TextStyle(
                            // color: Colors.w,
                            ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          "Login Here!",
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
