import 'package:flutter/material.dart';
import 'package:grocerystore/screens/groceries_details_screen.dart';
import '../screens/groceries_overview_screen.dart';
import 'package:provider/provider.dart';
import '../providers/groceries.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Groceries(),
      child: MaterialApp(
        title: 'My Grcoceries',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.orange,      
          fontFamily: 'Satisfy',
        ),
        home: GroceriesOverviewScreen(),
        routes: {
          GroceriesDetailsScreen.routeName: (ctx) => GroceriesDetailsScreen(),
        },
      ),
    );
  }
}
