import 'package:flutter/material.dart';
import 'package:ims/item_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item List'),
      ),
      body: ItemList(), // Referencing the ItemList widget
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add a new item
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
