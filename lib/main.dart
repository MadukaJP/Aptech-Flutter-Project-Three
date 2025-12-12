import 'package:flutter/material.dart';
import 'package:project_three/responsive_layout.dart';

void main() =>
    runApp(const MaterialApp(home: Home(), debugShowCheckedModeBanner: false));

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout();
  }
}

