import 'package:flutter/material.dart';
import 'package:hallo/Screens_widget/screen_explore_one.dart';
import 'package:hallo/Screens_widget/screen_explore_two.dart';

class explore_screen extends StatelessWidget {
  const explore_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Seach name or username",
                    filled: true,
                    fillColor: Colors.grey.shade400,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ), 
            TabBar(tabs:[
              Tab(
                child: Text("Group",style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text("1-on-1",style: TextStyle(color: Colors.black),),
              )
            ] ),
            Expanded(child:TabBarView(children: [explore_screen_one(),explore_screen_two()]))
          ],
        ),
        
      ),
    );
  }
}