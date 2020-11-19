import 'package:flutter/material.dart';

/// these objects support updating values throughout the app by calling notifyListeners()
class ItemChangeNotifier extends ChangeNotifier {
  final List<int> itemsList = [];

  void add(int number) {
    itemsList.add(number);
    notifyListeners();
  }

  void remove(int index) {
    itemsList.removeAt(index);
    notifyListeners();
  }
}
