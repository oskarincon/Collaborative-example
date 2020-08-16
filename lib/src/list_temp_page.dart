import 'package:flutter/material.dart';


class ListTempPage extends StatelessWidget {
  final options = ['1', '2', '3', '4', '5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ListView(
          children: _listWidget(),
        ),
      );
  }
  
  
  List<Widget> _listWidget() {
  return options.map( (item) {
    return  Column(
      children: <Widget>[
        ListTile(
          title: Text('tal'),
          subtitle: Text('data'),
          leading: Icon( Icons.adb),
          trailing: Icon( Icons.arrow_forward_ios),
        ),
        Divider()
      ],
    );
  }).toList();
}
}

