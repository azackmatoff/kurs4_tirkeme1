import 'package:flutter/material.dart';

import 'package:kurs4_tirkeme1/birinchi_barak.dart';
import 'package:kurs4_tirkeme1/ekinchi_barak.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: EkinchiBarak(),
      home: BirinchiBarak(),
    );
  }
}
