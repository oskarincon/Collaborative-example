import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;


class _OptionsProvides {
  List<dynamic> options = <dynamic>[];

  _OptionsProvides() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    options = dataMap['rutas'];
    //print(options);
    return options;
  }
}

final loadMenu = new _OptionsProvides();