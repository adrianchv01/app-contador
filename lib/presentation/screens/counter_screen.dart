import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Contador',style: TextStyle( fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white)),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cantidad de clicks realizados:'),
            Text('10', style: TextStyle(fontSize: 120, fontWeight: FontWeight.w100)),
            Text('Clicks', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
        ),
    );
  }
}