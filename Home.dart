import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('หน้าแรก'),
        ),
        body: _body());
  }

  void _openHomeScreen() {
    Navigator.of(context).pushNamed('/homeScreen');
  }

  void _openDragScreen() {
    Navigator.of(context).pushNamed('/dragScreen');
  }

  Widget _body() {
    return Center(
        child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Color.fromARGB(255, 141, 205, 241)),
      child: Column(
        children: [
          ElevatedButton.icon(
            onPressed: _openHomeScreen,
            icon: Icon(Icons.arrow_circle_right),
            label: Text('ไปหน้า HomeScreen'),
          ),
          ElevatedButton.icon(
              onPressed: _openDragScreen,
              icon: Icon(Icons.arrow_circle_right),
              label: Text('ไปหน้า DragScreen')),
        ],
      ),
    ));
  }
}
