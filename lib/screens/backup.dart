import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.logo, required this.title});
  final String title;
  final String logo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
        body: Column(children: [
          Container(
              color: Colors.transparent,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
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
                  child: Container(
                    color: Colors.transparent,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center,
                          crossAxisAlignment: CrossAxisAlignment
                              .center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width *
                                  0.2,
                              height: double
                                  .infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .center,
                                crossAxisAlignment: CrossAxisAlignment
                                    .start,
                                children: [
                                  Text('Calming Thoughts'),
                                  Text('SJ Home Care Services'),
                                  SizedBox(
                                      height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      print('Coming Soon');
                                    },
                                    child: Text('Join Us'),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                width:
                                    20),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: Text('Why Choose Us?',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.bold))),
                                      Image.asset(logo, height: 24, width: 24),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.check, size: 20),
                                      SizedBox(width: 8),
                                      Expanded(
                                          child: Text(
                                              'Compassionate & Personalized Support',
                                              softWrap: true)),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.chat_bubble_outline, size: 20),
                                      SizedBox(width: 8),
                                      Expanded(
                                          child: Text(
                                              'Guidance Rooted in Research & Care',
                                              softWrap: true)),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.favorite_outline, size: 20),
                                      SizedBox(width: 8),
                                      Expanded(
                                          child: Text('A Community That Cares',
                                              softWrap: true)),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              )),
          Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Calming Thoughts'),
                        Text('SJ Home Care Services'),
                        ElevatedButton(
                          onPressed: () {
                            print('Coming Soon');
                          },
                          child: Text('Join Us'),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text('Why Choose Us?',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))),
                            Image.asset(logo, height: 24, width: 24),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.check, size: 20),
                            SizedBox(width: 8),
                            Expanded(
                                child: Text(
                                    'Compassionate & Personalized Support',
                                    softWrap: true)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.chat_bubble_outline, size: 20),
                            SizedBox(width: 8),
                            Expanded(
                                child: Text(
                                    'Guidance Rooted in Research & Care',
                                    softWrap: true)),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_outline, size: 20),
                            SizedBox(width: 8),
                            Expanded(
                                child: Text('A Community That Cares',
                                    softWrap: true)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  _buildStatBox('60+', 'Lives Transformed'),
                  _buildStatBox('20+', 'Expert Caregivers'),
                  _buildStatBox('4+', 'Years of Service'),
                ],
              ),
            ),
          ),
        ]));
  }

  Widget _buildStatBox(String number, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(number,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 5),
          Text(label,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
