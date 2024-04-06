//
// main.dart
//
// main app shows some intro screens
// and basic instructions and notes
//

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import './screens/nav_screen.dart';
import './screens/intro1.dart';
import './screens/intro2.dart';
import './screens/intro3.dart';


void main() {
  runApp(GetMaterialApp(
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.system,
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea( child: PageView(
        onPageChanged: (index){
          //print(index);
          if (index == 4) Get.off(NavScreen());
        },
        controller: page,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [ 
          Intro1(),
          Intro2(),
          Intro3()
        ])));}}
