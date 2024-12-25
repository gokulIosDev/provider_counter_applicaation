import 'package:basic_bloc/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("counter Application"),
          centerTitle: true,
        ),
        body: Center(
          child: Text(
            counter.initialValue.toString(),
            style: TextStyle(fontSize: 40),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter.increment();
              },
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                counter.decrement();
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
