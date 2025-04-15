import 'package:flutter/material.dart';
import 'package:state_management/inherited%20widget/service/app_state.dart';

class InheritedHome extends StatefulWidget {
  const InheritedHome({super.key});

  @override
  State<InheritedHome> createState() => _InheritedHome();
}

class _InheritedHome extends State<InheritedHome> {
  @override
  Widget build(BuildContext context) {

    final appState = AppState.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Inherited Widget Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Count: ${appState?.count}"),

            SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              appState?.increment();
            }, child: Text("Increment")),
            SizedBox(height: 20),
           
            ElevatedButton(
              onPressed: () {
                appState?.decrement();
              },
              child: Text("Decrement"),
            ),
          ],
        ),
      ),
    );
  }
}
