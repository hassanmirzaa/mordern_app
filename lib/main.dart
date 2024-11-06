import 'package:flutter/material.dart';
import 'package:the3d_objects/hidden_drawer.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
          
        )
      ),
      home: const HiddenDrawer(),
    );
  }
}

