import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  Intro1({super.key});
  
  @override Widget build(BuildContext context){
  return
  
  Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column( children: [
            
              SizedBox(height: 70),
              
              Text("Welcome to DCCF1",
                style: TextStyle(color: Colors.orangeAccent.shade100, fontSize: 25)),
                
                SizedBox(height:50),
                
                ClipOval(
              child: Image.network(
                'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2022/12/720/405/AMTRAK.jpg',

                width: 125, // Set width
                height: 125, // Set height
                fit: BoxFit.cover,
              ),
            ),
                
                
              SizedBox(height: 50),
              
             Text("DCC Flutter controller",
                style: TextStyle(color: Colors.yellow, fontSize: 20)),
                
             SizedBox(height: 15),
 
             Text("Do settings before anything else",
                style: TextStyle(color: Colors.yellow, fontSize: 20)),
                
             SizedBox(height: 50),
              
             Text("swipe right to left to continue",
                style: TextStyle(color: Colors.limeAccent, fontSize: 14)),              
              
            ]),
            color: Colors.blue,
   
          );
  
  }}
