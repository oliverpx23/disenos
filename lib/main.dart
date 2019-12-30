import 'package:disenos/src/basico_page.dart';
import 'package:disenos/src/botones_page.dart';
import 'package:disenos/src/scrollview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    //Status bar color xD
     SystemChrome.setSystemUIOverlayStyle(
       SystemUiOverlayStyle.light.copyWith(
         statusBarColor: Colors.transparent
       )
     );


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage()
      },

    );
  }
}