import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    const int days = 30;
    const String name = "Code with Subuhi";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog App'),
      ),
      body: const Center(
        child: Text('Welcome to $days days of Flutter by $name'),
      ),
      drawer: const MyDrawer() ,
    );
  }
}
