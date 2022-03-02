import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/pages/my_first_page.dart';

/// Refactoring
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyFirstPage(),
    );
  }
}


/// Screens, Pages, Views, UI