import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/stateful_sabak_barakchasy.dart';
import 'package:kurs4_tirkeme1/ekinchi_bet.dart';
import 'package:kurs4_tirkeme1/my_home_page.dart';
import 'package:kurs4_tirkeme1/tapshyrma_bir.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TapshyrmaBir(),
    );
  }
}
