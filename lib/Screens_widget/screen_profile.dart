import 'package:flutter/material.dart';

class profile_screen extends StatelessWidget {
  const profile_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "JERRY",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month),
                color: Colors.black),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list_outlined),
              color: Colors.black,
            )
          ]),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        width: 250,
        child: Container(
          color: Colors.amber,
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit profile"),
              ),
              ListTile(
                leading: Icon(Icons.subscriptions),
                title: Text("Subscription"),
              ),
              ListTile(
                leading: Icon(Icons.attach_money),
                title: Text("Transaction History"),
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard_sharp),
                title: Text("Refer a friend"),
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Wishlist"),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help"),
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(children: [
            sized(20),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage("assets/images/profule image.jpeg"),
                    ),
                    sized(30),
                    follow_details(follo: "0", name: "Followers"),
                    follow_details(follo: "12", name: "Followings"),
                    follow_details(follo: "B1", name: "Level")
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "daily41",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    sizedw( 10),
                    Image.asset(
                      "assets/images/Sri_Lanka_flag.png",
                      height: 25,
                      width: 25,
                    ),
                    sizedw(5),
                    Text("Sri_Lanka")
                  ],
                ),
                Align(
                    alignment: FractionalOffset.topLeft,
                    child: Image.asset(
                      "assets/images/tailand_flage.jpeg",
                      height: 50,
                      width: 40,
                    )),
                Row(
                  children: [
                    Icon(Icons.star),
                    Text(
                      "4.87(2)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200]),
                  height: 300,
                  width: 370,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.person),
                                      Text(
                                        "1-on-1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "/ 0 min",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "left this week",
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 170,
                              width: 140,
                            ),
                            sizedw(20),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.people),
                                      Text(
                                        "Group",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "0",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "/ 0  classes",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Text(
                                    "left this week",
                                    style: TextStyle(color: Colors.grey[600]),
                                  )
                                ],
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              height: 170,
                              width: 140,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Resets weekly at 5:30 Am on Sunday "),
                            Icon(Icons.info_outline)
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          height: 60,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Subscribe",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                 Container(
                        decoration: const BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                        child: const SizedBox(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.poll_outlined,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.play_arrow_outlined,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),  Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            ' Upcoming 0 classes',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      sized(5),
                      Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            ' Complete your profile',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                       Row(
                        children: [
                          Text(
                            '2 of 4',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                         sizedw(5),
                          Text('COMPLETE' ,style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                           Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 250,
                                  width: 230,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Icon(
                                        Icons.person,
                                        size: 50,
                                      ),
                                      sized(8),
                                      const Text(
                                        'Add Your Bio',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      sized(8),
                                      const Text(
                                        'Describe yourself to followers',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      sized(20),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("Add Bio"),
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))))
                                    ],
                                  ),
                                ),
                              ),
                                Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 250,
                                    width: 230,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.category_outlined,
                                          size: 50,
                                        ),
                                        sized(8),
                                        const Text(
                                          'Add Your Interests',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        sized(8),
                                        const Text('Show Your Interests'),
                                       sized(20),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Add Interests',
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10))),
                                        )
                                      ],
                                    )),
                              ),
                              
                                 
                        ],
                      ),
                    )       
              ],
            )
          ]),
        ),
      ),
    );
  }
  SizedBox sizedw( double val1) {
    return SizedBox(
      width: val1,
    );
  }
  Padding follow_details({required String follo, required String name}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            follo,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
  SizedBox sized(double val) => SizedBox(
        height: val,
      );
}