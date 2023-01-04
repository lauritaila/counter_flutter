import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.pink);
    int counter = 0;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("HomeScreen"),
        ),
        backgroundColor: Colors.pink,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Número de clicks", style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
        },
      ),
    );
  }
}
