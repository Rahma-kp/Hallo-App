import 'package:flutter/material.dart';

class explore_screen_two extends StatelessWidget {
  const explore_screen_two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            AppBar(),
            SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Teachers",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: axisDirectionToAxis(AxisDirection.right),
              child: Row(
                children: [
                  sized(10),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  sized(20),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  sized(20),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  sized(20),
                  teachersdata(images: "assets/images/teacher1.jpeg"),
                  sized(20),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  sized(20),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  sized(10)
                ],
              ),
            ),
            sized(10),
           Row(
            children: [
             ElevatedButton(onPressed: (){}, child:Text("jiiooo"))
            ],
           )
          ],
        ));
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
