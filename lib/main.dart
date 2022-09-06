import 'package:flutter/material.dart';
import '../screens/groceries_overview_screen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Grcoceries',
      themeMode: ThemeMode.dark,
      
      primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
    
      ),
      home: GroceriesOverviewScreen(),
      
    );
  }
}
