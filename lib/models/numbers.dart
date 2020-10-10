import 'dart:collection';

import 'package:flutter/material.dart';

class NumbersChangeNotifier extends ChangeNotifier {
  final List<int> _numbersList = [];

  UnmodifiableListView<int> get numbers => UnmodifiableListView(_numbersList);

  void add(int number) {
    _numbersList.add(number);
    notifyListeners();
  }
}
