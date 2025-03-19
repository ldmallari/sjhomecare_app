import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Text('Support Page')
      ),
    );
  }
}