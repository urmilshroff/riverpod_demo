import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_demo/main.dart';

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final number = watch(numberProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Text(
          number.toString(),
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    );
  }
}
