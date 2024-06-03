import 'package:flutter/material.dart';
import 'package:read_app/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read Books App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print("Menu Icon Pressed");
                },
              ),
              const Text(
                'Read Ease',
                style: TextStyle(
                  color: Color(0xFF34A853),
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  print("Search Icon Pressed");
                },
              ),
            ],
          ),
        ),
        body: SafeArea(child: SignUp(),)
      ),
    );
  }
}
