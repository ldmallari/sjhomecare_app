import 'package:flutter/material.dart';
import 'package:sjhomecare_app/utils/api_handler.dart';
import 'package:flutter_icon_snackbar/flutter_icon_snackbar.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key, required this.logo, required this.title});

  final String title;
  final String logo;

  @override
  _SupportPageState createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final PostAPI postAPI = PostAPI();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    final String name = nameController.text;
    final String email = emailController.text;
    final String message = messageController.text;

    final response = await postAPI.postData(name, email, message);

    if (response != null) {
      setState(() {
        IconSnackBar.show(
          context, 
          snackBarType: SnackBarType.success, 
          label: 'Message sent successfully'
        );
        nameController.clear();
        emailController.clear();
        messageController.clear();
      });
    } else {
      setState(() {
        IconSnackBar.show(context, snackBarType: SnackBarType.fail, label: 'Failed to send message');
      });
    }
  }

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
              widget.logo,
              width: 35,
            ),
            Text(widget.title, style: Theme.of(context).textTheme.titleMedium),
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
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 0.3,
                        blurRadius: 25,
                        offset: Offset(5, 5),
                      )
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/assets/bg.jpg'),
                    ),
                  ),
                )
              ),
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 375,
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(), labelText: 'Name'),
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                            width: 375,
                            child: TextField(
                              controller: emailController,
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(), labelText: 'Email')
                          )
                        ),
                        SizedBox(height: 20),
                        SizedBox(
                          width: 375,
                          child: TextField(
                            controller: messageController,
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
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: _handleSubmit,
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  )
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