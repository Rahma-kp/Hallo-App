import 'package:flutter/material.dart';
import 'package:hallo/Screens_widget/screen_course.dart';
import 'package:hallo/Screens_widget/screen_explore_two.dart';
import 'package:hallo/Screens_widget/screen_profile.dart';
import 'package:hallo/Screens_widget/scrren_home.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int myIndex = 0;
  void navigatebottombar(int index){
    setState(() {
      
      myIndex=index;
    });
  }
  final page=[
    home_screen_widget(),
    explore_screen_one(),
    Course_screen(),
    profile_screen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:page[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: false,
        selectedItemColor:Colors.black, 
        unselectedItemColor:Colors.grey,
        onTap: navigatebottombar,
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp,),
            label: "Course",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
