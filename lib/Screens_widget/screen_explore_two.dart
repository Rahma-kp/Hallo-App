  import 'package:flutter/material.dart';

class explore_screen_one extends StatelessWidget {
  const explore_screen_one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SearchBar(leading: Icon(Icons.search,color: Colors.black87,),hintText: "Search...", ),
      ),
    );
  }
}