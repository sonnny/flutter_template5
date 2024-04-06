import 'package:flutter/material.dart';

class ListingScreen extends StatelessWidget {
@override Widget build(BuildContext context) {
  return ListView(children: <Widget>[
  
    Card(child: ListTile(
      leading: FlutterLogo(size: 56.0),
      title: Text('Title'),
      subtitle: Text('second line'),
      trailing: Icon(Icons.chevron_right))),

    Card(child: ListTile(
      leading: FlutterLogo(size: 56.0),
      title: Text('Title'),
      subtitle: Text('second line'),
      trailing: Icon(Icons.chevron_right))),
      
    Card(child: ListTile(
      leading: FlutterLogo(size: 56.0),
      title: Text('Title'),
      subtitle: Text('second line'),
      trailing: Icon(Icons.chevron_right)))   
     
  ]);}}
