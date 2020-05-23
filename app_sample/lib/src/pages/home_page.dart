import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final styleText = new TextStyle(fontSize: 18);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('MyApp'),
         centerTitle: true,
         elevation: 25,
         backgroundColor: Color.fromRGBO(63, 45, 189, 1),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Numero de Taps',style: styleText),
             Text('0',style: styleText),

           ],
         ),
       ),
    );
  }
}