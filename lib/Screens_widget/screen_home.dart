import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home_screen_widget extends StatefulWidget {
  const home_screen_widget({super.key});

  @override
  State<home_screen_widget> createState() => _home_screen_widgetState();
}

class _home_screen_widgetState extends State<home_screen_widget> {
  int activeindex = 0;
  final caroselImage = [
    'assets/images/screeimage.jpg',
    'assets/images/screeimage.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading:Image.asset("assets/images/flag_uk.png",),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.local_fire_department,
                  color: Colors.black38,
                  size: 30,
                ),
                autofocus: false),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.messenger_outline_sharp, color: Colors.black)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              sized(20),
              CarouselSlider.builder(
                  itemCount: caroselImage.length,
                  itemBuilder: (context, index, realIndex) {
                    final imagepath = caroselImage[index];
                    return buildImage(imagepath, index);
                  },
                  options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) => setState(
                      () => activeindex = index,
                    ),
                  )),
              builderIndicator(),
              sized(20),
              SizedBox(
                height: 110,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                   studentrow(image:"assets/images/person1.jpeg", name: "Alen"),
                   studentrow(image:"assets/images/adil.png", name: "Adil"),
                   studentrow(image:"assets/images/person2.jpeg", name: "Mariya"),
                    studentrow(image:"assets/images/person3.jpeg", name: "jhone"),
                    studentrow(image:"assets/images/person4.jpeg",name: "Rebekka"),
                   studentrow(image: "assets/images/aysha.jpg", name: "Aysha")
                  ],
                ),
              ),
              sized(20),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(radius: 30,backgroundImage:AssetImage("assets/images/caller1.png") ,),
                    title: Text(
                      "InstaLesson",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("1-on-1 lessons with a navtive teacher"),
                    trailing: Text(
                      "Paid",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "InstaMatch",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Unlimited practice with other studets"),
                    leading: CircleAvatar(radius: 30,backgroundImage: AssetImage("assets/images/caller2.jpeg"),),
                    trailing: Text(
                      "Free",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              sized(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.filter_alt_outlined)),
                      Text("Filter"),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.list)),
                      Text("InstaLog"),
                    ],
                  ),
                ],
              ),
              sized(10),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("Start InstaMatch"),
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))))),
            ],
          ),
        ),
      ),
    );
  }

  Column studentrow({required String image,required String name}) {
    return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(image),
                          radius: 35,
                        ),
                      ),
                      Text(name,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      )
                    ],
                  );
  }

  SizedBox sized(double val) => SizedBox(height:val,);

  Widget builderIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeindex,
        count: caroselImage.length,
        effect: const WormEffect(
          dotWidth: 10,
          dotHeight: 10,
          activeDotColor: Colors.black,
          dotColor: Colors.grey,
        ),
      );
  Widget buildImage(String imagepath, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: Colors.grey,
        child: Image.asset(
          imagepath,
          fit: BoxFit.fill,
        ),
      );
}
