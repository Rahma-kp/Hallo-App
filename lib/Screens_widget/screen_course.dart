import 'package:flutter/material.dart';

class Course_screen extends StatelessWidget {
  const Course_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("All"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Career development")),
                      SizedBox(width: 10),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Dream jobs")),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {}, child: Text("Life cycle")),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                coursedetails(
                    image: "assets/images/courseimg1.png",
                    caption: "How to be in the top 1% at work",
                    couresename: "B1-C2.8 lessons",
                    subcaption:
                        "learn how to become extraodinary and achive more"),
                SizedBox(
                  height: 10,
                ),
                coursedetails(
                    image: "assets/images/courseimg2.png",
                    caption: "Around the world i",
                    subcaption: "I learn tje  .......",
                    couresename: "A2-B2.8 lessons"),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container coursedetails(
      {required String image,
      required String caption,
      required String subcaption,
      required couresename}) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                height: 400,
                width: double.infinity,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    caption,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(couresename,
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w100))),
            ],
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                subcaption,
                style: TextStyle(fontWeight: FontWeight.w300),
              ))
        ],
      ),
    );
  }
}
