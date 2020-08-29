import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar (
        title: Text('Components'),  
      ),
      body: _myList() ,   
    );
  }
      
     Widget _myList() {
       
       return ListView(
         children: _listItem(),
       );
     }

  List<Widget> _listItem() {
    return [
      ListTile(
        title: Text("Hola a todos "),
      ),
      Divider(),
      ListTile(
        title: Text("Hola a todos "),
      ),
      Divider(),
    ];
  }
}