import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final styleText = new TextStyle(fontSize: 25);
  final count = 10;

  @override
  Widget build( context ){

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        backgroundColor: Colors.black,
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numbers of taps',
              style: styleText,
              ),
            Text(
              '$count',
              style: styleText,
              ),
          ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            
          },
          child: Icon( Icons.add_circle ),
          backgroundColor: Colors.black,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

}