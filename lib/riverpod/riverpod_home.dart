import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_management/riverpod/second_screen_riverpod.dart';
import 'package:state_management/riverpod/service/counter_notifier.dart';

class RiverpodHome extends ConsumerWidget {
  const RiverpodHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // using this ref access he counter_notifier method

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("RiverPod Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Count: ${ref.watch(counterProvider)}"),
            // watch is used to get the value
              
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // to value change 'read'
                ref.read(counterProvider.notifier).increment();
              },
              child: Text("Increment"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreenRiverpod()));
              },
              child: Text("Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}