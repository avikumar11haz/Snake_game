import 'package:flutter/material.dart';
import 'package:snake_game/blank_pixel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // grid dimensions
  int rowSize = 10;
  int totalNumberOfSquares = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //high scores
          Expanded(child: Container()),
          // game grid
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemCount: totalNumberOfSquares,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: rowSize),
              itemBuilder: (context, index) {
                return const BlankPixel();
              },
            ),
          ),
          // play button
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
