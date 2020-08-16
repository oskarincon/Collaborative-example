import 'dart:async';

import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  ScrollController _scroll = ScrollController();
  List<int> _numbers = new List();
  int _utimo = 0;

  @override
  void initState() {
    super.initState();
    _listDinamic();
    _scroll.addListener(() {
      if(_scroll.position.pixels ==  _scroll.position.maxScrollExtent) {
        _listDinamic();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scroll.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List page'),
      ),
      body: Stack(
        children: <Widget>[
          _crearList()
        ]
      ),
    );
  }

  Widget _crearList() {
    return RefreshIndicator(
        onRefresh: _obtener,
        child: ListView.builder(
        controller: _scroll,
        itemCount: _numbers.length,
        itemBuilder: (BuildContext context, int index) {
          final image = _numbers[index];
          return FadeInImage(
            placeholder: AssetImage('assets/original.gif'),
            image: NetworkImage('https://picsum.new.photos/id/$image/400/300'));
        }
        ),
    );
  }

  Future<Null> _obtener() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _numbers.clear();
      _utimo++;
      _listDinamic();
    }); 
    return Future.delayed(duration);
  }

  void _listDinamic() {
    setState(() {
      for (var i = 0; i < 10; i++) {
      _utimo++;
      _numbers.add(_utimo);
    }
    });

  }
}