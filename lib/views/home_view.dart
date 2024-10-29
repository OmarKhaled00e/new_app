import 'package:flutter/material.dart';
import 'package:new_app/widgets/custom_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scafflodKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafflodKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('News'),
        leading: IconButton(
            onPressed: () {
              scafflodKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
    );
  }
}
