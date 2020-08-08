import 'package:flutter/material.dart';
import 'package:app_sample/src/pages/counter_page.dart';
//import 'package:app_sample/src/pages/home_page.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build ( context ) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
          child: CounterPage(),

          //child:HomePage(),
      ), 
    );
  }

}