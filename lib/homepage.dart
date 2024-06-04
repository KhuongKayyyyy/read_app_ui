import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "This is homepage"
      ),
    );
  }
}