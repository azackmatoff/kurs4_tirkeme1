import 'package:flutter/material.dart';

/// tomonkulor maaniluu emes, jon gana misaldar
// Cola kolaAlypKel() {
//   /// asdasdsa
//   return Cola();
// }

// class Cola {

// }

class Adam {
  String name;
  int age;

  Adam({this.name, this.age});
}

class Okuuchu extends Adam {
  int okuuchuNomeri;
  int baalary;
  Okuuchu({this.baalary, this.okuuchuNomeri});
}

class Tirkemem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class Mugalim {}

void baaKoy(int baa) {
  print(baa);
}

void joktooAl() {
  //
}

void jurnaldyAch() {
  joktooAl();
  baaKoy(4);
}

class StatefulMisal extends StatefulWidget {
  const StatefulMisal({Key key}) : super(key: key);

  @override
  _StatefulMisalState createState() => _StatefulMisalState();
}

class _StatefulMisalState extends State<StatefulMisal> {
  void misal() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class StatelessMisal extends StatelessWidget {
  const StatelessMisal({Key key}) : super(key: key);

  void misal() {
    /// [StatelessWidget] widgetin ichinde
    /// [setState] metodu jok
    //setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
