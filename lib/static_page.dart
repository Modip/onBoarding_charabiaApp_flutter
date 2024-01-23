import 'package:flutter/material.dart';

class StaticPage extends StatefulWidget {
  const StaticPage({Key? key}) : super(key: key);

  @override
  State<StaticPage> createState() => _StaticPageState();
}

class _StaticPageState extends State<StaticPage> {
  var _showCenter = false;
  var _showSeventhWidget = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        _showCenter = true;
      });
    });

    Future.delayed(const Duration(milliseconds: 2500), () {
      setState(() {
        _showSeventhWidget = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            _showCenter
                ? const Center(
                    child: Text(
                      "What's\n going now ? ",
                      style: TextStyle(fontSize: 22),
                    ),
                  )
                : Container(),
            Positioned(
              left: 0,
              right: 140,
              top: 80,
              child: Container(
                transform: Matrix4.translationValues(0, 0, 0)..rotateZ(-.13),
                height: 70,
                decoration: const BoxDecoration(color: Colors.white),
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
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      topRight: Radius.circular(8))),
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
                                "jhjjf csnbcqih kjkjkfe euzauf ffhgfh",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
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
            ),
            Positioned(
              left: 210,
              right: 0,
              top: 100,
              child: SizedBox(
                height: 70,
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
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Text("kkhjkk"),
                              Text("jhjjf csnbcqih kjkjkfe euzauf ffhgfh"),
                            ],
                          )
                        ]),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 0,
                      left: 125,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12))),
                        child: const Center(
                          child: Text(
                            "Notes",
                            style: TextStyle(color: Colors.white),
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
            ),
            Positioned(
              left: 0,
              right: 165,
              top: 170,
              child: Container(
                transform: Matrix4.translationValues(0, 0, 0)..rotateZ(-.2),
                height: 170,
                decoration: const BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      top: 6,
                      left: 10,
                      right: 0,
                      child: Container(
                        height: 165,
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
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    Text("modip",
                                        style: TextStyle(fontSize: 8)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "jhjjf csnbcqih kjkjkfe euzauf ffhgfh",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
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
                      left: 105,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(8))),
                        child: const Center(
                          child: Text(
                            "Notes",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 230,
              right: 0,
              top: 270,
              child: Container(
                transform: Matrix4.translationValues(0, 0, 0)..rotateZ(.2),
                height: 65,
                decoration: const BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      top: 6,
                      left: 10,
                      right: 0,
                      child: Container(
                        height: 60,
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
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    Text("modip",
                                        style: TextStyle(fontSize: 8)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "jhjjf csnbcqih kjkjkfe euzauf ffhgfh",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
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
                                    "assets/images/lion3.jpg",
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
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(8))),
                        child: const Center(
                          child: Text(
                            "Notes",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 20,
              right: 130,
              bottom: 120,
              child: Container(
                transform: Matrix4.translationValues(0, 0, 0)..rotateZ(.25),
                height: 220,
                decoration: const BoxDecoration(color: Colors.white),
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
                                "jhjjf csnbcqih kjkjkfe euzauf ffhgfh dhghgdhg vuu",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
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
                            color: Color.fromARGB(255, 147, 231, 150),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(8))),
                        child: const Center(
                          child: Text(
                            "Location",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 210,
              right: 0,
              bottom: 100,
              child: Container(
                transform: Matrix4.translationValues(0, 0, 0)..rotateZ(-.15),
                height: 110,
                decoration: const BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      top: 6,
                      left: 10,
                      right: 0,
                      child: Container(
                        height: 100,
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
                                      style: TextStyle(fontSize: 8),
                                    ),
                                    Text("modip",
                                        style: TextStyle(fontSize: 8)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "jhjjf csnbcqih kjkjkfe euzauf ffhgfh",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
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
                          color: const Color.fromARGB(255, 242, 191, 201),
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
                    Positioned(
                      top: 5.5,
                      right: 0,
                      left: 105,
                      child: Container(
                        // padding: const EdgeInsets.only(left: 8),
                        decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                topRight: Radius.circular(8))),
                        child: const Center(
                          child: Text(
                            "Notes",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _showSeventhWidget
                ? Positioned(
                    bottom: 20,
                    left: 135,
                    right: 135,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(16)),
                      height: 40,
                      child: IconButton(
                        onPressed: (() {}),
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
        ));
  }
}
