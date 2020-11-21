import 'package:flutter_riverpod/all.dart';

class MyItem {
  final int itemNumber;
  MyItem(this.itemNumber);
}

class ItemChangeNotifier extends StateNotifier {
  /// the [state] itself is the list variable

  ItemChangeNotifier() : super(<MyItem>[]);

  void add(MyItem item) {
    state = [...state, item];
  }

  void remove(MyItem item) {
    state = [
      for (final elt in state)
        if (elt.itemNumber != item.itemNumber) elt,
    ];
  }
}
