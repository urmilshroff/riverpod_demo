import 'package:flutter/material.dart';

class ItemChangeNotifier extends ChangeNotifier {
  final List<int> itemsList = [];

  void add(int number) {
    itemsList.add(number);
    notifyListeners();
  }
}
