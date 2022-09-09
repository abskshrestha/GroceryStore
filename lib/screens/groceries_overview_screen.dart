import 'package:flutter/material.dart';
import '../widgets/grocery_grid.dart';
import '../widgets/grocery_item.dart';
import '../models/groceries.dart';

class GroceriesOverviewScreen extends StatelessWidget {
  // GroceriesOverviewScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('My Grocery Store')),
      ),
      body: GroceriesGrid(),
    );
  }
}