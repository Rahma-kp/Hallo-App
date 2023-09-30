 import 'package:flutter/material.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Colors.white,
        leading: Text("RAHMA KP",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month),color: Colors.black),
        IconButton(onPressed: (){}, icon: Icon(Icons.list_outlined))
      ]),
      
    );
  }
}