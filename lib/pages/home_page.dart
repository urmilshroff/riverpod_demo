import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:riverpod_demo/main.dart';

class MyHomePage extends HookWidget {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    /// the Hook must be inside build() of a [HookWidget]
    /// Hooks are basically like listeners/readers
    final _itemsHook = useProvider(itemsProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Demo')),
      body: Center(
        child: ListView.builder(
          /// Hook can be used to read variables
          itemCount: _itemsHook.itemsList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item ${_itemsHook.itemsList[index]}'),
            onTap: () => context.read(itemsProvider).remove(index),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),

        /// DON'T use Hooks when calling functions
        onPressed: () {
          context.read(itemsProvider).add(i);
          i++;
        },
      ),
    );
  }
}
