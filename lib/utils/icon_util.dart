import 'package:flutter/material.dart';

final _icon = <String, IconData> {
    'add_alert'     : Icons.add_alert,
    'accessibility' : Icons.accessibility,
    'folder_open'   : Icons.folder_open,
    'donut_large'   : Icons.donut_large,
    'input'         : Icons.input,
    'slide'         : Icons.tune,
    'list'          : Icons.access_alarm
};

Icon getIcon(String icon) {
    return Icon(_icon[icon], color: Colors.blue);
}