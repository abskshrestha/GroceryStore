import 'package:flutter/material.dart';

class GroceriesDetailsScreen extends StatelessWidget {
  // final String title;

  // GroceriesDetailsScreen({
  //   this.title});

  static const routeName = '/groceries-details';

  @override
  Widget build(BuildContext context) {
    final groceriesID = ModalRoute.of(context).settings.arguments as String; //extracting id
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
