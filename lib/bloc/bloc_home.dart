import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/second_screen_bloc.dart';
import 'package:state_management/bloc/service/counter_bloc.dart';


class BlocHome extends StatefulWidget {
  const BlocHome({super.key});

  @override
  State<BlocHome> createState() => _BlocHomeState();
}

class _BlocHomeState extends State<BlocHome> {
  @override
  Widget build(BuildContext context) {

    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Bloc Tutorial"),
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
                counterBloc.add(IncrementEvent());
              },
              child: Text("Increment"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreenBloc()));
              },
              child: Text("Second Screen"),
            ),
          ],
        ),
      ),
    );
  }
}