import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/groceries.dart';
import './grocery_item.dart';

class GroceriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final groceriesData = Provider.of<Groceries>(context);
    final groceries = groceriesData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: groceries.length,
      itemBuilder: (ctx, i) => GroceriesGrid(
        groceries[i].id,
        groceries[i].title,
        groceries[i].imageUrl,
        groceries[i].description,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
