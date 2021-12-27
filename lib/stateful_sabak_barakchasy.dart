import 'dart:developer';

import 'package:flutter/material.dart';

class StatefulSabakBarakchasy extends StatefulWidget {
  const StatefulSabakBarakchasy({Key key}) : super(key: key);

  @override
  _StatefulSabakBarakchasyState createState() =>
      _StatefulSabakBarakchasyState();
}

class _StatefulSabakBarakchasyState extends State<StatefulSabakBarakchasy> {
  String tekst = 'bul body bolot';

  void tekstiOzgort() {
    tekst = 'Tekst ozgordu ';

    setState(() {});
  }

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    _count++;
    log('build ===> $_count');
    return Scaffold(
      /// bul bashy
      appBar: AppBar(
        title: Text('Stateful Sabak Barakchasy '),
        centerTitle: true,
      ),

      /// bul denesi
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                tekst,
                style: const TextStyle(fontSize: 42.0),
              ),
            ),
            const SizedBox(height: 35.0),
            ElevatedButton(
              onPressed: () {
                tekstiOzgort();

                print('ozgrongon tekst ===>>> $tekst');
              },
              child: Text('teksti degendi ozgort'),
            ),
          ],
        ),
      ),

      /// bul footer, ayagi
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.redAccent,
        child: Center(
          child: Text(
            'footer',
            style: TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}
