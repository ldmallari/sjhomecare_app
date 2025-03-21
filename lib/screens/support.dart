import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key, required this.logo, required this.title});
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
          child: Center(child: ContactForm()),
        ));
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            width: 275,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Name'),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(
              width: 275,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email'))),
          const SizedBox(height: 20),
          const SizedBox(
            width: 275,
            child: TextField(
              obscureText: false,
              minLines: 5,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Message',
                alignLabelWithHint: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
