import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/service/counter_bloc.dart';

class SecondScreenBloc extends StatefulWidget {
  const SecondScreenBloc({super.key});

  @override
  State<SecondScreenBloc> createState() => _SecondScreenBlocState();
}

class _SecondScreenBlocState extends State<SecondScreenBloc> {
  @override
  Widget build(BuildContext context) {

    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) {
                return Text("Count: $count");
              }
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(DecrementEvent());
              },
              child: Text("Decrement"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(IncrementEvent());
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