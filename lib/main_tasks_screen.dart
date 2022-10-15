import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainTasksScreen extends StatefulWidget{
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold
     (
     appBar: AppBar(
     title: Text('Hello Sabah,',
       style: TextStyle(color: Colors.black),),
     backgroundColor: Colors.white,),
     body: Column(children: [



     ],),
     bottomNavigationBar: Container(
       margin:const EdgeInsets.all(30),//height:60,

    child: ClipRRect(
    borderRadius:  BorderRadius.circular(20),
       child: BottomNavigationBar(
         selectedItemColor:Color(0xFF6637E5),
         unselectedItemColor: Color(0xFFA18CD9),
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'Home',
             backgroundColor: Color(0xFFEAE4FE),),
           BottomNavigationBarItem(icon: Icon(Icons.library_books),label: 'Projects'),
           BottomNavigationBarItem(icon: Icon(Icons.alarm_outlined),label: 'Reminders'),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')

         ],
       ),
    ),
     ),
     //bottomNavigationBar: ,


     );

  }
}