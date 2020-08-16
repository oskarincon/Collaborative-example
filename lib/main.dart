//  import 'package:components/src/list_temp_page.dart';
import 'package:flutter/material.dart';

import 'package:components/routes/routes.dart';

import 'package:components/src/alert_page.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       localizationsDelegates: [
         GlobalMaterialLocalizations.delegate,
         GlobalWidgetsLocalizations.delegate,
       ],
        supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Hebrew, no country code
      ],
      title: 'Material App',
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (BuildContext context)=> AlertPage()
        );
      },
      //home: HomePage()
    );
  }
}