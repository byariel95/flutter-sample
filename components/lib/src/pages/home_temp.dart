import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final options = ['Uno','Dos','Tres','Cuatro','Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
        centerTitle: true,
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {

    List<Widget> list = new List<Widget>();
    for (var opt  in options) 
    {
      final widgetemp = ListTile (
        title: Text(opt),
      );

      list..add(widgetemp)
          ..add( Divider() );
      //list.add( Divider() );
    }

    return list;
  }

  List<Widget> _crearItemsCorta() {

     return options.map((item )  {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('subtitulo'),
            leading: Icon(Icons.accessibility_new),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();

  } 



}