import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_demo/models/item_model.dart';
import 'package:riverpod_demo/pages/home_page.dart';

// define provider variables (class objects) globally
final itemsProvider =
    ChangeNotifierProvider<ItemChangeNotifier>((ref) => ItemChangeNotifier());

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
