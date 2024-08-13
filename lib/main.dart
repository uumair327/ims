import 'package:flutter/material.dart';
import 'package:ims/home.dart'; // Import or define the Home widget
import 'package:ims/item_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Home(), // Ensure Home is defined or imported
      ),
    );
  }
}
