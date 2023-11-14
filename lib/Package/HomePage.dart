import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          CostumMenu(imageAssets: "assets/segi.PNG", title: "Persegi"),
          CostumMenu(imageAssets: "assets/segitiga.PNG", title: "segitiga"),
        ],
      ),
    );
  }
}

class CostumMenu extends StatelessWidget {
  const CostumMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: const BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(imageAssets),
          Text(title),
        ],
      ),
    );
  }
}
