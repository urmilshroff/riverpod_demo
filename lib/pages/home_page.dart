import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:riverpod_demo/main.dart';

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final _itemsHook = useProvider(itemsProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Demo')),
      body: Center(
        child: ListView.builder(
          itemCount: _itemsHook.itemsList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item $index'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => context.read(itemsProvider).add(0),
      ),
    );
  }
}
