import 'package:components/provides/options_provides.dart';
import 'package:components/utils/icon_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _listItem(),
    );
  }

  Widget _listItem() {
    return FutureBuilder(
      future: loadMenu.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _listWidget(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listWidget(List<dynamic> data, BuildContext context) {
  return data.map( (item) {
    return  Column(
      children: <Widget>[
        ListTile(
          title: Text(item['texto']),
          leading: getIcon(item['icon']),
          trailing: Icon( Icons.keyboard_arrow_right, color: Colors.blue,),
          onTap: () {
            Navigator.pushNamed(context, item['ruta']);
            /*
            final route = MaterialPageRoute(
              builder: (context) => AlertPage(),
            );
            Navigator.push(context, route)
            */
          },
        ),
        Divider()
      ],
    );
  }).toList();
  }
}
