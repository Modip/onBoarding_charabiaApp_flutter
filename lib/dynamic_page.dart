import 'dart:math';

import 'package:flutter/material.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({Key? key}) : super(key: key);

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage>
    with SingleTickerProviderStateMixin {
  bool _showCenter = false;
  bool _showBottom = false;

  bool play = false;
  late AnimationController controller;
  late Animation<double> animationFirst;
  late Animation<double> animationSeconde;
  late Animation<double> animationThirdth;
  late Animation<double> animationFourth;
  late Animation<double> animationFifth;
  late Animation<double> animationSixth;



  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showCenter = true;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _showBottom = true;
      });
    });

    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..forward();

    animationFirst = Tween<double>(begin: -1.0, end: 0.0).animate(controller);
    animationSeconde = Tween<double>(begin: 1.0, end: 0.0).animate(controller);
    animationThirdth = Tween<double>(begin: -1.0, end: 0.0).animate(controller);
    animationFourth = Tween<double>(begin: 1.0, end: 0.0).animate(controller);
    animationFifth = Tween<double>(begin: -1.0, end: 0.0).animate(controller);
    animationSixth = Tween<double>(begin: 1.0, end: 0.0).animate(controller);

    controller.addListener(() {
      setState(() {});
    });

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.stop();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
  }

  String displayText = "";

  List string = [
    "To keep track of important events in your friends' lives",
    "To effortlessly keep track of important moment in your kids' lives",
    "Where cherished momories find a home, allowing parent to safely store"
  ];

  void changeText() {
    setState(() {
      play = !play;
      displayText = string[Random().nextInt(string.length)];

    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _showCenter
              ? const Center(
                  child: Text(
                    "What's going now",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              : Container(),

          //First
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            left: 0,
            right: 140,
            top: play ? 700 : 80,
            child: AnimatedBuilder(
              animation: animationFirst,
              builder: (context, index) {
                final width = MediaQuery.of(context).size.width;
                final x = animationFirst.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: Container(
                    transform: Matrix4.translationValues(0, 0, 0)
                      ..rotateZ(-.13),
                    height: 70,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 6,
                          left: 10,
                          right: 0,
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 196, 194, 194),
                                borderRadius: BorderRadius.circular(8)),
                            child: Stack(children: [
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 135,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  decoration: const BoxDecoration(
                                      color: Colors.lightBlue,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(12),
                                          topRight: Radius.circular(8))),
                                  child: const Center(
                                    child: Text(
                                      "Notes",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "06/01/2024 - ",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text("modip",
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Star working on his mobile project in Dakar",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color.fromARGB(255, 112, 147, 164),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lion2.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //second
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            left: 210,
            right: 0,
            top: play ? 600 : 100,
            child: AnimatedBuilder(
              animation: animationSeconde,
              builder: (context, index) {
                final width = MediaQuery.of(context).size.width;
                final x = animationSeconde.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: SizedBox(
                    height: 82,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8,
                          left: 10,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 8),
                            height: 70,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 196, 194, 194),
                                borderRadius: BorderRadius.circular(12)),
                            child: Stack(children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "06/01/2024 - ",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text("Orbit",
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Just had the first date Luke at the coffee shop a geat feeling about the",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 0,
                          left: 105,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 53, 213, 114),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12))),
                            child: const Center(
                              child: Text(
                                "Notes",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color.fromARGB(255, 53, 213, 114),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/drapeau_sn.jpeg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //Thirdth

          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            left: play ? 70 : 0,
            right: play ? 70 : 165,
            top: play ? 400 : 170,
            child: AnimatedBuilder(
              animation: animationThirdth,
              builder: (context, index) {
                final width = MediaQuery.of(context).size.width;
                final x = animationThirdth.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: Container(
                    transform: Matrix4.translationValues(0, 0, 0)
                      ..rotateZ(play ? 0 : -.2),
                    height: 185,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 6,
                          left: 10,
                          right: 0,
                          child: Container(
                            height: 180,
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 196, 194, 194),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "06/01/2024 - ",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text("Dieye Code",
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    "God a new lion. Six months old named Cesar and Boby",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/lion3.jpg")),
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color.fromARGB(255, 252, 222, 126),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lion1.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5.5,
                          right: 0,
                          left: 135,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 252, 222, 126),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(8))),
                            child: const Center(
                              child: Text(
                                "Notes",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //Fourth

          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            left: 230,
            right: 0,
            top: play ? 600 : 270,
            child: AnimatedBuilder(
              animation: animationFourth,
              builder: (context, index) {
                final width = MediaQuery.of(context).size.width;
                final x = animationFourth.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: Container(
                    transform: Matrix4.translationValues(0, 0, 0)
                      ..rotateZ(-.13),
                    height: 70,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 6,
                          left: 10,
                          right: 0,
                          child: Container(
                            height: 60,
                            padding: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 196, 194, 194),
                                borderRadius: BorderRadius.circular(8)),
                            child: Stack(children: [
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 125,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 232, 106, 64),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Notes",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "06/01/2024 - ",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text("modip",
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Star working on his PhD in Dakar at UCAD",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color.fromARGB(255, 232, 106, 64),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lion2.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //Five

          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            left: 20,
            right: 130,
            bottom: play ? -40 : 120,
            child: AnimatedBuilder(
              animation: animationFifth,
              builder: (context, index) {
                final width = MediaQuery.of(context).size.width;
                final x = animationFifth.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: Container(
                    transform: Matrix4.translationValues(0, 0, 0)..rotateZ(.25),
                    height: 220,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 6,
                          left: 10,
                          right: 0,
                          child: Container(
                            height: 200,
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 196, 194, 194),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Stack(children: [
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "06/01/2024 - ",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text("Modip",
                                            style: TextStyle(fontSize: 8)),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    "Move to Magic Land at the coffee shop a geat feeling about the",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(12),
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/images/medina.png"))),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color.fromARGB(255, 217, 148, 212),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/nigeria.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5.5,
                          right: 0,
                          left: 105,
                          child: Container(
                            // padding: const EdgeInsets.only(left: 8),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 217, 148, 212),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(8))),
                            child: const Center(
                              child: Text(
                                "Location",
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //Sixth
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 400),
            left: 217,
            right: 0,
            bottom: play ? 5 : 100,
            child: AnimatedBuilder(
              animation: animationFourth,
              builder: (context, index) {
                final width = MediaQuery.of(context).size.width;
                final x = animationFourth.value * width;
                return Transform(
                  transform: Matrix4.translationValues(x, 0, 0),
                  child: Container(
                    transform: Matrix4.translationValues(0, 0, 0)..rotateZ(-.2),
                    height: 110,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 6,
                          left: 10,
                          right: 0,
                          child: Container(
                            height: 90,
                            padding: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 196, 194, 194),
                                borderRadius: BorderRadius.circular(8)),
                            child: Stack(children: [
                              Positioned(
                                top: 0,
                                right: 0,
                                left: 125,
                                child: Container(
                                  padding: const EdgeInsets.only(left: 8),
                                  decoration: const BoxDecoration(
                                    color: Colors.lightBlue,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Notes",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: const [
                                        Text(
                                          "06/01/2024 - ",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        Text("Orbit",
                                            style: TextStyle(fontSize: 10)),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "Just had the first date Luke at the coffee shop a geat feeling about the",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: const Color.fromARGB(255, 112, 147, 164),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        "assets/images/lion2.jpg",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //bottom

          _showBottom
              ? Positioned(
                  bottom: 20,
                  left: 140,
                  right: 140,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)),
                    height: 40,
                    child: IconButton(
                      onPressed: (() {
                        setState(() {
                          changeText();
                        });
                      }),
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
