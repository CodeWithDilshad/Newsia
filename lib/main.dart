// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:newsia/Carasoul.dart';
import 'package:newsia/loginpage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NEWSIA',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      routes: {
        '/': (context) => LoginPage(),
        'carasuel': (context) => MyCarousel(),
      },
      // home: ,
    );
  }
}
