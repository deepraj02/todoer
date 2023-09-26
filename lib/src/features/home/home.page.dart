import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String pageRoute = "homepage";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Hello")),
    );
  }
}
