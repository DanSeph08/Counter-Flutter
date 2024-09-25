import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counterClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Hola Mundo')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$counterClicks",
              style:
                  const TextStyle(fontSize: 120, fontWeight: FontWeight.w100),
            ),
            Text("$counterClicks" == "1" ? "click" : "clicks",
                style: const TextStyle(fontSize: 50))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counterClicks++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
