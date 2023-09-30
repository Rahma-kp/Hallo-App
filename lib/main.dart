

import 'package:flutter/material.dart';
import 'package:hallo/bottom_bar.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "HalloApp",
      home:BottomBar(),
    );
  }
}