import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;
  double _fontSize = 1;
  double _DXPoint = 0;
  double _mbsSize = 100;
  double _heighFactor = 300;
  double _DYPoint = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อรนันท์ สำรวล'),
      ),
      body: GestureDetector(
        onTap: onTapScreen,
        onHorizontalDragUpdate: (details) {
          setState(() {
            _DXPoint = details.globalPosition.dx.floorToDouble();
            _fontSize = _DXPoint / MediaQuery.of(context).size.width * 100;

            _mbsSize =
                100 - (_DXPoint / MediaQuery.of(context).size.width * 100);
          });
        },
        onVerticalDragUpdate: (details) {
          setState(() {
            _DYPoint = details.globalPosition.dy.floorToDouble();
            _heighFactor = _DYPoint / MediaQuery.of(context).size.height * 300;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromARGB(255, 141, 205, 241)),
          child: Column(
            children: [
              Text('Number =' + number.toString()),
              Text(DateTime.now().toString()),
              Text(
                'MSU',
                style: TextStyle(fontSize: _fontSize),
              ),
              Text(
                'MBS',
                style: TextStyle(fontSize: _mbsSize),
              ),
              Image.network(
                'https://pbs.twimg.com/media/FuUuuWiagAA9xAA.jpg:large',
                height: _heighFactor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapScreen() {
    number = number + 1;
    setState(() {
      number = number + 1;
    });
  }
}
