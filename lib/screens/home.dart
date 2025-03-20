import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.logo, required this.title});
  final String title;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                logo,
                width: 35,
              ),
              Text(title),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(child: Text('Home Page')),
        ));
  }
}
