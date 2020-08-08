import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final _styleText = new TextStyle(fontSize: 20); // guin bajo vuelve privado


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Counter App'),
         centerTitle: true,
         elevation: 30,
         backgroundColor: Color.fromRGBO(63, 45, 189, 1),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text('Numero de Taps',style: _styleText),
             Text('0',style: _styleText),

           ],
         ),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.android),
         onPressed: () => {
         
         },
       ),
    );
  }
}