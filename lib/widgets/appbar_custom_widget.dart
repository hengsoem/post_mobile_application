import 'package:flutter/material.dart';

class AppbarCustomWidget extends StatelessWidget implements PreferredSizeWidget{
  Color? backgroundColor;
  String? title;
  AppbarCustomWidget({super.key, this.title, this.backgroundColor});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight
  );
  @override
  Widget build(BuildContext context) {
    return  AppBar(
    iconTheme: IconThemeData(
    color: backgroundColor?? Colors.white
    ),
    backgroundColor: Colors.cyan,
    title: Text(title??"", style: TextStyle(color: Colors.white),),);


  }
}
