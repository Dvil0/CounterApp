import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{

  @override
  createState() =>  _CounterPageState();
  

}

class _CounterPageState extends State<CounterPage>{

  final _styleText = new TextStyle(fontSize: 25);
  int _counter = 0;

  @override
  Widget build( context ){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Counter')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Numbers of taps',
                style: _styleText,
                ),
              Text(
                '$_counter',
                style: _styleText,
                ),
            ],
          ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: _addButtons(),
    );
  }

  Widget _addButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            onPressed: _clear,
            child: Icon(Icons.exposure_zero),
            backgroundColor: Colors.black,
            ),
        Expanded( child: SizedBox( width: 5.0 )),
        FloatingActionButton(
            onPressed: _add,
            child: Icon(Icons.add),
            backgroundColor: Colors.black,
            ),
        Expanded( child: SizedBox( width: 5.0 )),
        FloatingActionButton(
            onPressed: _remove,
            child: Icon(Icons.remove),
            backgroundColor: Colors.black,
            ),
        SizedBox(width: 30),
      ],
    );
  }

  void _add(){
    setState(() => _counter++);
  }

  void _remove(){
    setState(() => _counter--);
  }

  void _clear(){
    setState(() => _counter=0);
  }
}