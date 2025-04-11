import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXFeature extends StatelessWidget {
  const GetXFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.to(NextPage());
              },
              child: Text("Go To Next Page"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Message",
                  content: Text(
                    "Want to Move?", // first priority
                    style: TextStyle(color: Colors.amber),
                  ),
                  backgroundColor: Colors.white,
                  // middleText: "Do you want go to next page?",
                  // middleTextStyle: TextStyle(fontStyle: FontStyle.italic),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Get.to(NextPage());
                      },
                      child: Text("Yes"),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text("No"),
                    ),
                  ],
                );
              },
              child: Text("Popup To Next Page"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                // Get.off(ThirdPage()); // previous Page
                Get.offAll(ThirdPage()); // All the previous page
              },
              child: Text("Go To Third Page"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Warning Message",
                  "Can't be Deleted",
                  icon: Icon(Icons.warning, color: Colors.white,),
                  backgroundColor: Colors.lightGreenAccent,
                  duration: Duration(seconds: 1)
                );
              },
              child: Text("Snackbar"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Get.showSnackbar(
                  GetSnackBar(
                    title: "Success",
                    message: "Deleted Successfully",
                    duration: Duration(seconds: 1),
                    icon: Icon(Icons.warning_outlined),
                    backgroundColor: Colors.blueGrey,
                  ),
                );
              },
              child: Text("Show Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Go To Previous Page"),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Page")),
      body: Center(child: Text("Welcome to Third Page")),
    );
  }
}
