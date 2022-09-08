import 'package:flutter/material.dart';
import '../providers/groceries.dart';
import 'package:provider/provider.dart';
import '../models/groceries.dart';
import '../widgets/grocery_Item.dart';


class GroceriesGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final groceriesData = Provider.of<Groceries>(context);
    final groceries = groceriesData.items; //fetching data from provider (groceriesData=>Groceries=>items)

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      itemCount: groceries.length,
      itemBuilder: (ctx, i) => GroceryItem(
          groceries[i].id,
          groceries[i].title, 
          groceries[i].imageUrl,
          groceries[i].description),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2),
    );
  }
}
