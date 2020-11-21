import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:riverpod_demo/main.dart';
import 'package:riverpod_demo/models/item_model.dart';

class MyHomePage extends ConsumerWidget {
  var i = 0;
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _itemsList = watch(itemsProvider.state);

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Demo')),
      body: Center(
        child: ListView.builder(
          /// Hooks can be used to read variable values
          itemCount: _itemsList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text('Item ${_itemsList[index].itemNumber}'),
            onTap: () => context.read(itemsProvider).remove(_itemsList[index]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),

        /// DON'T use Hooks when calling functions
        onPressed: () {
          context.read(itemsProvider).add(MyItem(i));
          i++;
        },
      ),
    );
  }
}
