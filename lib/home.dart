import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 80,
          left: 20,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(30)),
            height: 30,
            width: 30,
            child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "X",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ))),
          ),
        ),
        const Positioned(
          top: 150,
          left: 20,
          right: 30,
          child: SizedBox(
            child: Center(
                child: Text(
              "Add your friends to stay in the loop what's going on",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
          ),
        ),
        const Positioned(
          top: 280,
          left: 20,
          right: 30,
          child: SizedBox(
            child: Center(
                child: Text(
              "Fetch them from your contacts or add them manuallly",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            )),
          ),
        ),
        Positioned(
          bottom: 200,
          left: 50,
          right: 50,
          child: SizedBox(
              height: 140,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 15,
                    right: 40,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                      height: 60,
                      width: 60,
                      child: Center(
                          child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/garcon_avatar.png"))),
                      )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      height: 60,
                      width: 60,
                      child: Center(
                          child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/femme_avatar.png"))),
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 90,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30)),
                      height: 60,
                      width: 60,
                      child: Center(
                          child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/elephant.jpg"))),
                      )),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(30)),
                      height: 60,
                      width: 60,
                      child: Center(
                          child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/lion2.jpg"))),
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 55,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(30)),
                      height: 60,
                      width: 60,
                      child: Center(
                          child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/drapeau_ci.png"))),
                      )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 50,
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.white),
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30)),
                        height: 60,
                        width: 60,
                        child: Center(
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/drapeau_sn.jpeg"))),
                          ),
                        )),
                  ),
                ],
              )),
        ),
        Positioned(
          bottom: 60,
          left: 50,
          right: 50,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(16)),
            height: 50,
            child: TextButton(
              onPressed: (() {}),
              child: const Text(
                "Add from contacts",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 50,
          right: 50,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            height: 40,
            child: TextButton(
              onPressed: (() {}),
              child: const Text("Manually",
                  style: TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
        ),
      ],
    ));
  }
}
