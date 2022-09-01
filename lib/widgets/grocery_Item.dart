import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;

  GroceryItem(this.id, this.title, this.imageUrl, this.description);

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            title,
            textAlign: TextAlign.center),
            leading: IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ),
        );
    
  }
}
