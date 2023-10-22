import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //high scores
          Expanded(
              child: Container(
            color: Colors.blue,
          )),
          // game grid
          Expanded(
              child: Container(
            color: Colors.green,
          )),
          // play button
          Expanded(
              child: Container(
            color: Colors.blue,
          )),
        ],
      ),
    );
  }
}
