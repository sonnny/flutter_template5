//
// nav_screen.dart
//
// screen shows bottom nav to navigate the app
//

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import './home_screen.dart';
import './profile_screen.dart';
import './setting_screen.dart';
import './listing_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
    SettingScreen(),
    ListingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DCCF1'),
        
        actions: [
        
          IconButton(icon: const Icon(Icons.lightbulb),
            onPressed:() {
              Get.isDarkMode
                ? Get.changeTheme(ThemeData.light())
                : Get.changeTheme(ThemeData.dark());}),
                
          IconButton(icon: const Icon(Icons.power_settings_new),
            onPressed:() { SystemNavigator.pop(); })
        ]
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',),
            
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',),
            
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Listing',),            
            
          
        ]));}}
