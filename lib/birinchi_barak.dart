import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:kurs4_tirkeme1/ekinchi_barak.dart';

class BirinchiBarak extends StatefulWidget {
  const BirinchiBarak({Key key}) : super(key: key);

  @override
  _BirinchiBarakState createState() => _BirinchiBarakState();
}

class _BirinchiBarakState extends State<BirinchiBarak> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Тапшырма 01',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Variant 1
          // Container(
          //   color: Colors.blueAccent,
          //   height: 60.0,
          //   width: 250.0,
          //   child: Center(
          //     child: Text('data 1'),
          //   ),
          // ),

          /// Variant 2
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return EkinchiBarak(
                  kelgenSan: number.toString(),
                );
              }));
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff46F3F3),
                borderRadius: BorderRadius.all(Radius.circular(12)),

                /// jalgyz bir jaktagi burchunu ozgortuu
                // borderRadius: BorderRadius.only(topRight: Radius.circular(25))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 120.0, vertical: 18.0),
                child: Text(
                  'сан: ' + number.toString(),
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 38.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  /// uzun jolu, 1 ge azayt
                  // number -= 1;

                  /// kiska jolu, 1 ge azayt
                  number--;

                  setState(() {});

                  log('number-- ===>> $number');
                },
                child: const Icon(Icons.remove),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  elevation: 1,
                  primary: const Color(0xff005EA6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                ),
              ),
              const SizedBox(width: 28.0),
              ElevatedButton(
                onPressed: () {
                  // number += 1;

                  number++;

                  setState(() {});

                  log('number++ ===>> $number');
                },
                child: const Icon(Icons.add),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  elevation: 1,
                  primary: const Color(0xff005EA6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
