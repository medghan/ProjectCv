import 'package:cv_app_binome/component/splash_screen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Arial', // Exemple de police globale
        backgroundColor: Colors.grey[200], // Couleur de fond globale plus douce que le blanc pur
      ),
      home: SplashScreen(),
    );
  }
}

