import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{

  late Text text;
  late Icon icon;
  AppBarWidget(this.text,this.icon);
  @override
  Widget build(BuildContext context) {
  return Container(

    margin:const EdgeInsets.all(30),
    child: Row(
      children: [
      //  SizedBox(height: 100,),
        Expanded(
          child: text,
        ),
        icon,//Icons.notifications_none_outlined
      ],
    ),);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;

}