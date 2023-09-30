
import 'package:flutter/material.dart';

class Course_screen extends StatelessWidget {
  const Course_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
        ),
       body:SingleChildScrollView(
         child: Padding(
       
           padding: const EdgeInsets.all(20),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("Time"),),
                  ElevatedButton(onPressed: (){}, child: Text("Level")),
                  ElevatedButton(onPressed: (){}, child: Text("Topic"))

                ],
              ),
              coursedetails(image: "assets/images/teacher1.jpeg",caption:"How to be in the top 1% at work",couresename: "B1-C2.8 lessons",subcaption:"learn how to become extraodinary and achive more"),
              SizedBox(height: 20,),
              coursedetails(image: "assets/images/teacher1.jpeg", caption: "Around the world i", subcaption: "I learn tje  .......", couresename:"A2-B2.8 lessons" ),
              SizedBox(height: 20,)

            ],
           ),
         ),
       ) , 
      ),
    );
  }

  Container coursedetails({required String image,required String caption,required String subcaption,required couresename}) {
    return Container(

        color: Colors.white,
        child: Column(
          children: [
            ClipRRect(borderRadius:BorderRadius.circular(15),
              child: Image.asset(image,height:400,width: double.infinity,)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 15,),
                Align(alignment:Alignment.topRight,
                  child: Text(caption, style: TextStyle(fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                Align(alignment:Alignment.topLeft ,
                  child: Text(couresename,style:TextStyle(color: Colors.black54,fontWeight: FontWeight.w100))),
               
              ],
            ),
              Align(alignment: Alignment.bottomLeft,
                child: Text(subcaption,style: TextStyle(fontWeight: FontWeight.w300),))     
          ],
        ),
      );
  }
}