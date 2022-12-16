import 'package:flutter/material.dart';

import 'screens/screens.dart';

void main() => runApp(const PetsRWiseStore());

class PetsRWiseStore extends StatelessWidget {
  const PetsRWiseStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (BuildContext context) => const HomeScreen(),
        'product': (BuildContext context) => const ProductScreen(),
      },
      theme: buildCopyWith(),
    );
  }

  ThemeData buildCopyWith() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.grey[300],
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.pinkAccent,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        focusColor: Colors.pink,
        hoverColor: Colors.pink,
        highlightElevation: 0,
      ),
    );
  }
}
