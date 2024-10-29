import 'package:flutter/material.dart';
import 'package:new_app/views/home_view.dart';

void main() {
  runApp(const Newsapp());
}
class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}


