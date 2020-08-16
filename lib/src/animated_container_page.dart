
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
    double _width = 50.0;
    double _height = 50.0;
    Color _color = Colors.red;
    BorderRadius _radius = BorderRadius.circular(10.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('animation page'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _radius,
            color: _color
        ),
      )
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.play_arrow),
       onPressed: () => _cambiarForma() 
     ),
    );
  }
    _cambiarForma() {

    final _random = Random();
    setState(() {
      _width = _random.nextInt(300).toDouble();
      _height = _random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        _random.nextInt(255), 
        _random.nextInt(255), 
        _random.nextInt(255), 
        1);
      _radius = BorderRadius.circular(_random.nextInt(100).toDouble());
    });


  }
}