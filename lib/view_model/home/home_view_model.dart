import 'package:flutter/material.dart';

class HomeViewModel with ChangeNotifier {
  List<int> bottomButtonArray = [0, 0, 0, 0];

  void addButtonNumber(int index) {
    bottomButtonArray[index] += 1;
    notifyListeners();
  }
}
