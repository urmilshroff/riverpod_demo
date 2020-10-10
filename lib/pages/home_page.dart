import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_demo/main.dart';

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // these are like listeners
    final numberWatcher = watch(numberProvider);
    final numberStateWatcher = watch(numberStateProvider).state;
    final numberChangeNotifierWatcher = watch(numberChangeNotifierProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Demo')),
      body: Center(
        // child: Text(
        //   numberState.toString(),
        //   style: TextStyle(fontSize: 32.0),
        // ),
        child: ListView.builder(
          itemBuilder: (context, index) =>
              Text(numberChangeNotifierWatcher.numbers.toString()),
          itemCount: numberChangeNotifierWatcher.numbers.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        // onPressed: () => context.read(numberStateProvider).state++,
        onPressed: () => numberChangeNotifierWatcher.add(10),
      ),
    );
  }
}
