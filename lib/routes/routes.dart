import 'package:components/src/inputs_page.dart';
import 'package:components/src/list_page.dart';
import 'package:components/src/slider_page.dart';
import 'package:flutter/material.dart';


import 'package:components/src/cards_page.dart';
import 'package:components/src/animated_container_page.dart';
import 'package:components/src/alert_page.dart';
import 'package:components/src/avatar_page.dart';
import 'package:components/src/home_page.dart';


Map <String, WidgetBuilder> getRoutes() {
return {
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) =>  AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardsPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs' : (BuildContext context) => InputsPage(),
    'slide'   : (BuildContext context) => SliderPage(),
    'list' : (BuildContext context) => ListPage()
 };
}