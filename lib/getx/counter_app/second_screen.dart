import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx/counter_app/service/main_controller.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(()=> Text("Count: ${mainController.count}")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                mainController.decrement();
              },
              child: Text("Decrement"),
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
