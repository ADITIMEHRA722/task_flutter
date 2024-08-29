import 'package:flutter/material.dart';

void main() {
  runApp(ColorChangerApp());
}

class ColorChangerApp extends StatefulWidget {
  @override
  _ColorChangerAppState createState() => _ColorChangerAppState();
}

class _ColorChangerAppState extends State<ColorChangerApp> {
  final List<Color> colors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];

  int currentIndex = 0;

  void changeColor() {
    setState(() {
      currentIndex = (currentIndex + 1) % colors.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colors[currentIndex],
        appBar: AppBar(
          title: Text('Color Changer'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: changeColor,
            child: Text('Change Background Color'),
          ),
        ),
      ),
    );
  }
}
