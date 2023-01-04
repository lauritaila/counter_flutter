import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }
  void reset() {
    counter = 0;
    setState(() {});
  }
  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.pink);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("CounterScreen"),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatActions(increaseFn: increase, decreaseFn: decrease, resetFn: reset),
    );
  }
}

class CustomFloatActions extends StatelessWidget {
  
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatActions({
    Key? key, required this.increaseFn, required this.decreaseFn, required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.pink,
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),
        // const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: Colors.pink,
          child: const Icon(Icons.exposure_zero),
          onPressed: () => resetFn(),
        ),
        // const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: Colors.pink,
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
