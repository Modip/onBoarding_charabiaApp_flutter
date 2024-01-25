import 'package:flutter/material.dart';
import 'package:onboarding_charabia_app/draft.dart';
import 'package:onboarding_charabia_app/dynamic_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'On boarding Charabia App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const DynamicPage(),
    );
  }
}
