import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/service/provider_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderScreen>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<ProviderScreen>(
              builder: (context, prodvalue, child) {
                return Text("Count: ${prodvalue.count}");
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.decrement();
              },
              child: Text("Decrement"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: Text("Increment"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Home Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
