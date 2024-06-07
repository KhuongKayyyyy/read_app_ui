import 'package:flutter/material.dart';
import 'package:read_app/homepage.dart';
import 'package:read_app/login.dart';
import 'package:read_app/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read Books App',
      home: Scaffold(
        body: Homepage(),
      ),
    );
  }
}
