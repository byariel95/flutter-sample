import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CounterPage extends StatefulWidget {
  
  @override
  createState() => _CounterPageState();

}

class _CounterPageState extends State<CounterPage> 
{

  final styleText = new TextStyle(fontSize: 20);

  int _counter = 0;
  
  @override
  Widget build(BuildContext context) 
  {
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
             Text('Numero de Taps',style: styleText),
             Text('$_counter', style: styleText),

           ],
         ),
       ),
       //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: _buildButtons()
    );
  }

  Widget _buildButtons ()
   {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [
        SizedBox( width: 30.0,),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _delete),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _decresing),
        SizedBox( width: 5.0,),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _addCount)
      ],
    );
   }

   void _addCount() 
   {
     setState(() => _counter++ );
   }

   void _delete() 
   {
     setState(() => _counter=0 );
   }

   void _decresing() 
   {
     setState(() => _counter--);
   }

}

