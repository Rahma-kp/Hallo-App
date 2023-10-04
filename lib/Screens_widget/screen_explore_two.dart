  import 'package:flutter/material.dart';

class explore_screen_one extends StatelessWidget {
  const explore_screen_one({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container( child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Time",),
                    ), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container( child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("Level"),
                    ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,)),
                  ),
                  Container( child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text("Topic"),
                  ),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,)),
                ],
              ),
              Column(
                children: [
                  Container(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/eximage1.jpg",)),
                        Sizedbox(5),
                      Text("Interview preparation",style: TextStyle(fontWeight: FontWeight.bold),),
                      Sizedbox(5),
                      Text("Mon at 2:30 PM .Work .B1",style: TextStyle(color: Colors.grey),),
                          CircleAvatar(radius:35 ,backgroundImage: AssetImage("assets/images/person1.jpeg")),
                          Sizedbox(5),
                          Text("Brenda" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          
                    ],
                  ),),
                   Container(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/ex1.jpeg",)),
                        Sizedbox(5),
                      Text("Interview preparation",style: TextStyle(fontWeight: FontWeight.bold),),
                      Sizedbox(5),
                      Text("Tue at 2:30 PM .Work .B1",style: TextStyle(color: Colors.grey),),
                          CircleAvatar(radius:35 ,backgroundImage: AssetImage("assets/images/person4.jpeg")),
                          Sizedbox(5),
                          Text("oliviya" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          
                    ],
                  ),),
                   Container(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/ex2.jpeg",)),
                        Sizedbox(5),
                      Text("Interview preparation",style: TextStyle(fontWeight: FontWeight.bold),),
                      Sizedbox(5),
                      Text("Mon at 2:30 PM .Work .B1",style: TextStyle(color: Colors.grey),),
                          CircleAvatar(radius:35 ,backgroundImage: AssetImage("assets/images/person3.jpeg")),
                          Sizedbox(5),
                          Text("Brenda" ,style: TextStyle(fontWeight: FontWeight.bold),),
                          
                    ],
                  ),),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox Sizedbox(double val) => SizedBox(height:val);
} 