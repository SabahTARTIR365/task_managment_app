import 'package:flutter/material.dart';

class InProgressWidget extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(5),
      width:0.9*MediaQuery.of(context).size.width,
      height: 80,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:   Color(0xffF0F0FC),),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Text("    Project1",style: TextStyle(color: Colors.black54,fontSize: 13)),
          // SizedBox(height:5),
          Text('    Create task1',
            style: TextStyle(color: Colors.black54,fontSize: 16, fontWeight: FontWeight.bold,),),
          Text("     2 hours",style: TextStyle(color: Colors.black54,fontSize: 13)),

        ],
      ),
    );
  }

}