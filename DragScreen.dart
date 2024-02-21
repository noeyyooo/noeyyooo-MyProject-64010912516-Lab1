import 'package:flutter/material.dart';

class DragScreen extends StatefulWidget {
  const DragScreen({super.key});

  @override
  State<DragScreen> createState() => _DragScreenState();
}

class _DragScreenState extends State<DragScreen> {
  double l = 0;
  double t = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Drag Screen'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(l, t, 0, 0),
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              l = details.globalPosition.dx.floorToDouble();
              t = details.globalPosition.dy.floorToDouble();
            });
          },
          child: Image.network(
            'https://pbs.twimg.com/media/FuUuuWiagAA9xAA.jpg:large',
            height: 200,
          ),
        ),
      ),
    );
  }
}
