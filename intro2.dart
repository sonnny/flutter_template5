import 'package:flutter/material.dart';

class Intro2 extends StatelessWidget{
  Intro2({super.key});
  
  @override Widget build(BuildContext context){
    return Container(  
      color: Colors.teal.shade100,         
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column( children: [
        SizedBox(height: 20),
        Text('intro 2'),
        SizedBox(height: 30),
        Text('more info'),
        SizedBox(height: 40)
      ]));}}
