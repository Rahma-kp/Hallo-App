import 'package:flutter/material.dart';

class explore_screen_two extends StatelessWidget {
  const explore_screen_two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        detailsbutton(text: "kkkkkkk"),
                        sized(20),
                        detailsbutton(text: "lllllllll"),
                        sized(20),
                        detailsbutton(text: "hhhhhhhh"),
                      ],
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      " New Teachers",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: axisDirectionToAxis(AxisDirection.right),
            child: Row(
              children: [
                sized(10),
                teachersdata(images: "assets/images/person3.jpeg"),
                sized(20),
                teachersdata(images: "assets/images/person1.jpeg"),
                sized(20),
                teachersdata(images: "assets/images/person2.jpeg"),
                sized(20),
                teachersdata(images: "assets/images/teacher1.jpeg"),
                sized(20),
                teachersdata(images: "assets/images/teacher1.jpeg"),
                sized(20),
                teachersdata(images: "assets/images/teacher1.jpeg"),
                sized(10)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                teateches_about(
                    profileimage: "assets/images/person1.jpeg",
                    about:
                        "Hi! I Lean my Bachelor of Science in Business Management before raising four childern .  education is so imporatant ....",
                    flag: "assets/images/flag_uk.png",
                    rating: "4.98(115)"),
                teateches_about(
                    profileimage: "assets/images/person3.jpeg",
                    flag: "assets/images/Sri_Lanka_flag.png",
                    rating: "4.8(109)",
                    about:
                        "it`s nice to meet ypu!. My name is T.seba.I am good lisenre whith,greate communication skills. i have 2 years teaaching exprience .i am......"),
                teateches_about(
                    profileimage: "assets/images/person4.jpeg",
                    flag: "assets/images/tailand_flage.jpeg",
                    rating: "4.7(110)",
                    about:
                        "Scchedule updated. we can practiec Endlish or Spanish!. Read my book...")
              ],
            ),
          )
        ],
      ),
    ));
  }

  Container teateches_about(
      {required String profileimage,
      required String flag,
      required String rating,
      required String about}) {
    return Container(
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(profileimage),
                    ),
                  ),
                ],
              ),
              sized(10),
              Column(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(flag),
                  ),
                  Text(rating)
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(about),
          )
        ],
      ),
    );
  }

  Container detailsbutton({required String text}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey.shade400),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(text),
      ),
    );
  }

  CircleAvatar teachersdata({required String images}) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: AssetImage(images),
    );
  }

  SizedBox sized(double val) {
    return SizedBox(
      width: val,
    );
  }
}
