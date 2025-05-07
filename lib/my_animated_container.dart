import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;
  double boxX = -1;
  double boxY = -1;

  void _movedBox() {
    setState(() {
      boxX = 1;
      boxY = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Container")),
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: GestureDetector(
          onTap: _movedBox,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.bounceInOut,
            alignment: Alignment(boxX, boxY),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: boxHeight,
                width: boxWidth,
                color: boxColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
