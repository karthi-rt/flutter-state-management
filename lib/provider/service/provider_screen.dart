import 'package:flutter/material.dart';

class ProviderScreen extends ChangeNotifier{
  int count = 0;
  
  void increment() {
    count++;
    notifyListeners(); // fastup the function call
  }

  void decrement() {
    count--;
    notifyListeners();
  }
}