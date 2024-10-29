import 'package:flutter/material.dart';
import 'package:new_app/widgets/list_view.dart';
import 'package:new_app/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('News'),
      ),
      body: const Padding(
        padding:  EdgeInsets.all(4),
        child: Column(
          children: [
            Expanded(
              child: NewsListView(),
            ),
          ],
        ),
      ),
    );
  }
}

