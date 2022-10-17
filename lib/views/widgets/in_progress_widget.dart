import 'package:flutter/material.dart';

class InProgressWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:EdgeInsets.all(20),
      width:150,
      height: 150,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:   Color(0xffF0F0FC),),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            SizedBox(height: 10),
            Text("Social media project",style: TextStyle(color: Colors.black54,)),
            SizedBox(height: 20),
            const Text('Create splash screen ',
              style: TextStyle(color: Colors.black54,fontSize: 18, fontWeight: FontWeight.bold,),),
            SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.circle,color: Colors.green,size: 10,),
                Text(" 20 march 2022",style: TextStyle(color: Colors.black54,)),
              ],
            ),

          ],
        ),
      ),
    );
  }

}