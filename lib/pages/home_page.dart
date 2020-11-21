import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:riverpod_demo/main.dart';
import 'package:riverpod_demo/models/item_model.dart';

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    /// this is a watcher which listens to changes in the [itemsProvider]'s [state]
    final _itemsList = watch(itemsProvider.state);

    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Demo')),
      body: Center(
        child: ListView.builder(
            itemCount: _itemsList.length,
            itemBuilder: (context, index) {
              final item = _itemsList[index];
              return ListTile(
                title: Text('Item ${item.itemNumber}'),
                onTap: () => context.read(itemsProvider).remove(item),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // call state functions using context
          context.read(itemsProvider).add(MyItem(_itemsList.length));
        },
      ),
    );
  }
}
