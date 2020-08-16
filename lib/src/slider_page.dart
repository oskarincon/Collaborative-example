import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider  = 60.0;
  bool _blockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('slider page'),
       ),
       body: Container(
         padding: EdgeInsets.only(top: 20.0),
         child: Column(
           children: <Widget>[
             _crearSlider(),
             Divider(),
             _crearCheck(),
             Divider(),
             _crearListTitle(),
             Expanded(
               child: _crearImagen()
               )
           ],
         )
         ,
       ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valueSlider,
      label: 'goku', 
      activeColor: Colors.redAccent,
      min: 20.0,
      max: 200.0,
      onChanged: (_blockCheck ) ? null : (value) {
        setState(() {
          _valueSlider = value;
        });
      });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/10/90/04/10900421a3702c6f95255f9b6bc75457.png'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheck() {
    return CheckboxListTile(
      title: Text('blockear imagen'),
      value: _blockCheck, 
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      }
      );
  }

    Widget _crearListTitle() {
    return SwitchListTile(
      title: Text('blockear imagen'),
      value: _blockCheck, 
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      }
      );
  }
}