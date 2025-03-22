import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key, required this.logo, required this.title});
  final String title;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              logo,
              width: 35,
            ),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 450,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You Are Not Alone',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'We understand the importance of compassionate and accessible care. '
                        'Reach out to us today, we\'re ready to support you and your loved ones.',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              Center(
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    _supportBox(
                      Icons.support_agent_outlined,
                      'Get the Support You Need',
                      'Whether you\'re facing challenges or need someone to talk to, we\'re here to help.',
                    ),
                    _supportBox(
                      Icons.phone_in_talk_outlined,
                      'Reach Out Anytime',
                      'Our team is dedicated to providing compassionate support and guidance whenever you need it.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 0.1,
                        blurRadius: 8,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: ContactForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
   }
  Widget _supportBox(IconData icon, String title, String description) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 190,
      width: 215,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.1,
            blurRadius: 8,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 30),
          SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
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
            width: 375,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Name'),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(
              width: 375,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Email')
            )
          ),
          const SizedBox(height: 20),
          const SizedBox(
            width: 375,
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
