import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_demo/models/numbers.dart';
import 'package:riverpod_demo/pages/home_page.dart';

final numberProvider = Provider<int>((ref) => 0);
final numberStateProvider = StateProvider<int>((ref) => 0);
final numberChangeNotifierProvider =
    ChangeNotifierProvider<NumbersChangeNotifier>(
        (ref) => NumbersChangeNotifier());

void main() {
  runApp(ProviderScope(child: MyApp()));
}

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
