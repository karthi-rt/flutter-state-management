import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/second_screen.dart';
import 'package:state_management/provider/service/provider_screen.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({super.key});

  @override
  State<ProviderHome> createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<ProviderScreen>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Provider Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // read data must have consumer
            Consumer<ProviderScreen>(
              builder: (context, prodvalue, child) {
                return Text("Count: ${prodvalue.count}");
              }
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // for action use notifylistener with fun end
                provider.increment();
              },
              child: Text("Increment"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text("Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}