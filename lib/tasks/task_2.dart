import 'dart:isolate';

import 'package:flutter/material.dart';

class Task2 extends StatelessWidget {
  Task2({super.key});
  var result = Isolate.run(() => heavyComputation());
  @override
  Widget build(BuildContext context) {
    // int result = heavyComputation();
    return Scaffold(
      appBar: AppBar(title: const Text('Heavy Computation')),
      body: Center(
        child: FutureBuilder(
          future: result,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            return Text('Result: ${snapshot.data}');
          }
        ),
      ),
    );
  }

  static int heavyComputation() {
    // Og'ir amal
    int sum = 0;
    for (int i = 0; i < 1000000000; i++) {
      sum += i;
    }
    return sum;
  }
}
