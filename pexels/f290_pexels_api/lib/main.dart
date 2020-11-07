import 'package:f290_pexels_api/screens/home_page.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final colorPexels = Color(0xFF382068);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
  
      theme: ThemeData(
        hintColor: colorPexels,
        accentColor: colorPexels,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
