import 'dart:math';

import 'package:flutter/material.dart';

class Draft extends StatefulWidget {
  const Draft({Key? key}) : super(key: key);

  @override
  State<Draft> createState() => _DraftState();
}

class _DraftState extends State<Draft> {
  bool playFirst = false;
  bool playSecond = false;
  bool playThird = false;
  String displayText = "What's doing now";

  List string = [
    "To keep track of important events in your friends' lives",
    "To effortlessly keep track of important moment in your kids' lives",
    "Where cherished momories find a home, allowing parent to safely store"
  ];

  void changePosition() {
    setState(() {
      // playFirst = !playFirst;
      if (playFirst = !playFirst) {
        playSecond = !playSecond;
        playThird = !playThird;
      } else if (playFirst = !playFirst) {
        playSecond = !playSecond;
        playThird = playThird;
      }

      displayText = string[Random().nextInt(string.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    double sizeBottom = 110;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                displayText,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),

          //First
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            bottom: playFirst ? -30 : sizeBottom ,
            left: playFirst ? 160 : 70,
            right: playFirst ? 10 : 60,
            child: SizedBox(
              height: 140,
              child: Stack(children: [
                Positioned(
                  top: 5,
                  left: 10,
                  right: 0,
                  child: Container(
                    //  padding: EdgeInsets.all(4),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(left: 20),
                          height: 20,
                          child: Row(
                            children: const [
                              Text(
                                "16/01/2024 - ",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("Modip", style: TextStyle(fontSize: 10))
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 160,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 241, 197, 119),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            height: 20,
                            child: const Text(
                              "Event",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            height: 40,
                            child: const Text(
                              "Event ucsschiqihc nknvknks eihihi iehiv iggh ffd",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 65,
                          left: 10,
                          right: 10,
                          child: Container(
                              padding: const EdgeInsets.only(left: 6),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12))),
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ]),
            ),
          ),

          // Second
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            bottom: playSecond ? sizeBottom : -25,
            left: playSecond ? 40 : -10,
            right: playSecond ? 60 : 180,
            child: SizedBox(
              height: 120,
              child: Stack(children: [
                Positioned(
                  top: 5,
                  left: 10,
                  right: 0,
                  child: Container(
                    //  padding: EdgeInsets.all(4),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(left: 20),
                          height: 20,
                          child: Row(
                            children: const [
                              Text(
                                "16/01/2024 - ",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("Modip", style: TextStyle(fontSize: 10))
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 160,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 241, 197, 119),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            height: 20,
                            child: const Text(
                              "Event",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            height: 40,
                            child: const Text(
                              "Event ucsschiqihc nknvknks eihihi iehiv iggh ffd",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ]),
            ),
          ),

          //Third
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 800),
            bottom: playThird ? 120 : -15,
            left: playThird ? 40 : 160,
            right: playThird ? 60 : -10,
            child: SizedBox(
              height: 100,
              child: Stack(children: [
                Positioned(
                  top: 5,
                  left: 10,
                  right: 0,
                  child: Container(
                      padding:const EdgeInsets.all(4),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)),
                    child: Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.only(left: 20),
                          height: 20,
                          child: Row(
                            children: const [
                              Text(
                                "16/01/2024 - ",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("Modip", style: TextStyle(fontSize: 10))
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 160,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 241, 197, 119),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topRight: Radius.circular(12))),
                            height: 20,
                            child: const Text(
                              "Event",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 10,
                          right: 10,
                          child: Container(
                            padding: const EdgeInsets.only(left: 6),
                            height: 40,
                            child: const Text(
                              "Event ucsschiqihc nknvknks eihihi iehiv iggh ffd",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          //Button

          Positioned(
              bottom: 20,
              left: 90,
              right: 90,
              child: ElevatedButton(
                  onPressed: () {
                    if (playThird = !playThird) {
                      changePosition();
                    }
                  },
                  child: const Text("Press")))
        ],
      ),
    );
  }
}
//////////////// Copie ///////////////////
// Widget _someFunction(){
//    return GestureDetector(
//            onTap: () {
//               setState(() {}); // this should already get the correct radiocheck
//           // otherwise, you can remove it from the container below and make if/else statement here
//           },
//           child: _buildContainer();
// }

// Widget _buildContainer(){
//   BoxDecoration boxDecoration;

//   if(radiocheck){
//     boxDecoration = BoxDecoration(
//       color: Color(0xFF4A90E2),
//       shape: BoxShape.circle,
//     );
//     radiocheck = false;
//   } else {
//     boxDecoration= BoxDecoration(
//       border: Border.all(color:Color(
//           0xFF4A90E2), width: 1),
//       shape: BoxShape.circle,
//     );
//     radiocheck = true;
//   }

//   return Container(
//     height: 14.0,
//     width: 14.0,
//     decoration: boxDecoration,
//   );
//
//}

// class ListViewPage extends StatefulWidget {
//   @override
//   ListViewPageState createState() {
//     return new ListViewPageState();
//   }
// }

// class ListViewPageState extends State<ListViewPage> {
//   ScrollController _scrollController;

//   @override
//   initState() {
//     _scrollController = ScrollController();
//     _scrollController.animateTo(
//       40.0, // insert your ListItem's height.
//       duration: Duration(
//         milliseconds: 500,
//       ),
//       curve: Curves.linear,
//     );
//     super.initState();
//   }

//   Widget build(context) {
//     return ListView.builder(
//       controller: _scrollController,
//       itemCount: 100,
//       itemBuilder: (context, int index) {
//         return Container(
//           height: 40.0,
//           width: double.infinity,
//           child: Text(
//             index.toString(),
//           ),
//         );
//       },
//     );
//   }
// }

//

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int showText = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Geeksforgeeks"),
//       ),
//       body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
//         const DropdownButtonExample(),
//         image(),
//       ])),
//       floatingActionButton: FloatingActionButton(
//           backgroundColor: Colors.green,
//           child: const Icon(Icons.navigation),
//           onPressed: () {
//             if (_DropdownButtonExampleState().dropdownvalue == "Item 1") {
//               setState(() {
//                 showText = 1;
//               });
//             } else if (_DropdownButtonExampleState().dropdownvalue ==
//                 "Item 2") {
//               setState(() {
//                 showText = 2;
//               });
//             } else if (_DropdownButtonExampleState().dropdownvalue ==
//                 "Item 3") {
//               setState(() {
//                 showText = 3;
//               });
//             } else if (_DropdownButtonExampleState().dropdownvalue ==
//                 "Item 4") {
//               setState(() {
//                 showText = 4;
//               });
//             } else {
//               setState(() {
//                 showText = 5;
//               });
//             }
//           }),
//     );
//   }

//   image() {
//     if (showText == 1) {
//       return Container(
//         height: 200,
//         width: 200,
//         color: Colors.red,
//         child: Center(child: Text("Yo")),
//       );
//     } else if (showText == 2) {
//       return Container(
//         height: 200,
//         width: 200,
//         color: Colors.black,
//         child: Center(child: Text("Test")),
//       );
//     } else if (showText == 3) {
//       return Container(
//         height: 200,
//         width: 200,
//         color: Colors.green,
//         child: Center(child: Text("DIOP")),
//       );
//     } else if (showText == 4) {
//       return Container(
//         height: 200,
//         width: 200,
//         color: Colors.amber,
//         child: Center(child: Text("Modip")),
//       );
//     } else {
//       return Container(
//         height: 200,
//         width: 200,
//         color: Colors.grey,
//         child: Center(child: Text("Hello")),
//       );
//     }
//   }
// }

// class DropdownButtonApp extends StatelessWidget {
//   const DropdownButtonApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: DropdownButtonExample(),
//     );
//   }
// }

// class DropdownButtonExample extends StatefulWidget {
//   const DropdownButtonExample({Key? key}) : super(key: key);

//   @override
//   State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
// }

// class _DropdownButtonExampleState extends State<DropdownButtonExample> {
//   String dropdownvalue = 'Item 1';

//   var items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//     'Item 5',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton(
//       value: dropdownvalue,
//       icon: const Icon(Icons.keyboard_arrow_down),
//       items: items.map((String items) {
//         return DropdownMenuItem(
//           value: items,
//           child: Text(items),
//         );
//       }).toList(),
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownvalue = newValue!;
//         });
//       },
//     );
//   }
// }
