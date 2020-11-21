import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_demo/models/item_model.dart';
import 'package:riverpod_demo/pages/home_page.dart';

/// define [StateNotifierProvider] globally
final itemsProvider =
    StateNotifierProvider<ItemChangeNotifier>((ref) => ItemChangeNotifier());

/// wrap [MaterialApp] in [ProviderScope]
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
