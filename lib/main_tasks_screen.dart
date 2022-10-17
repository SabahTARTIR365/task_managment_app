import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_managing_app/views/widgets/appbar_widget.dart';
import 'package:task_managing_app/views/widgets/in_progress_widget.dart';
import 'package:task_managing_app/views/widgets/to_do_widget.dart';

class MainTasksScreen extends StatefulWidget{
  @override
  State<MainTasksScreen> createState() => _MainTasksScreenState();
}

class _MainTasksScreenState extends State<MainTasksScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold
     (

     body: Column(

       mainAxisAlignment: MainAxisAlignment.start,
       children: [

       //app bar
       AppBarWidget(Text('Hello, Sabah ',
         style: TextStyle(color: Colors.black,fontSize: 20,
           fontWeight: FontWeight.bold,),)
         ,Icon(Icons.notifications_none_outlined),),


       Center(
         child: ClipRRect(borderRadius:  BorderRadius.circular(30),

           child: Container(
             padding:EdgeInsets.all(10),

            width: MediaQuery.of(context).size.width-MediaQuery.of(context).size.width*0.1,
            height:MediaQuery.of(context).size.height/5 ,
            color: Color(0xFF6E4BFF),
             child: Row(
           //  mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(
                children: [
                  Text("        Today",style: TextStyle(color: Colors.white,)),
                  SizedBox(height: 35),
                  const Text('   2/10 tasks ',
                    style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold,),),
                ],
              ),

                 Expanded(
                   child: Container(//height:67,width: 55,
                     // color: Colors.red,
                       margin: EdgeInsets.all(0),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: Image(image:AssetImage('images/girl.png',),
                         width: MediaQuery.of(context).size.width/4,
                         fit: BoxFit.fill,),
                       )),
                 )
      ],
    ) ,

          ),),
       ),

//to do list
         Container(
           margin:const EdgeInsets.all(10),
           child: Row(
             children: [
               Expanded(
                 child: Text('  To do ',
                    style: TextStyle(color: Colors.black,fontSize: 20,
                     fontWeight: FontWeight.bold,),),
               ),
             ],
           ),),

       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: [
             ToDoWidget(),
             ToDoWidget(),
             ToDoWidget(),
         ],),
       ),
         Container(
           margin:const EdgeInsets.all(10),
           child: Row(
             children: [
               Expanded(
                 child: Text(' In progress ',
                   style: TextStyle(color: Colors.black,fontSize: 20,
                     fontWeight: FontWeight.bold,),),
               ),
             ],
           ),),

         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child:Column(
             children: [
               InProgressWidget(),
               //InProgressWidget(),
             ],),
         ),




     ],),
     bottomNavigationBar: Container(
       margin:const EdgeInsets.all(30),

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