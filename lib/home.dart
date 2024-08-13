import 'package:flutter/material.dart';
import 'package:ims/item.dart';
import 'package:ims/item_data.dart';
import 'package:ims/item_list.dart';
import 'package:provider/provider.dart';

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
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String newItem = '';
              return AlertDialog(
                title: Text('Add New Item'),
                content: TextField(
                  autofocus: true,
                  decoration: InputDecoration(hintText: "Enter item name"),
                  onChanged: (value) {
                    newItem = value;
                  },
                ),
                actions: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      if (newItem.isNotEmpty) {
                        Provider.of<ItemData>(context, listen: false)
                            .addItem(Item(item: newItem));
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
