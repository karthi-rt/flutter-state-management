import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx/counter_app/second_screen.dart';
import 'package:state_management/getx/counter_app/service/main_controller.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => _GetXPageState();
}

class _GetXPageState extends State<GetXPage> {

  final mainController = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("GetX Tutorial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // changed value are wrapped with Obx
            Obx(()=> Text("Count: ${mainController.count}")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                mainController.increment();
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
