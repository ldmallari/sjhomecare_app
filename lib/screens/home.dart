import 'package:flutter/material.dart';
import 'package:sjhomecare_app/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.logo, required this.title});
  final String title;
  final String logo;

  @override
  Widget build(BuildContext context) {
    void changeTab(int index) {
      myAppKey.currentState?.updateSelectedIndex(index);
    }

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
    body: ScrollConfiguration(
      behavior: ScrollBehavior().copyWith(overscroll: false, scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
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
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.transparent,
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: double.infinity,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(    
                                  'ThriveWell',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                    color: Colors.black,
                                  ),
                                ),
                                ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return LinearGradient(
                                      colors: [Colors.green, Colors.red],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    'Empowering Mental Well-Being',
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [Colors.green, Colors.red],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    onPressed: () {
                                      changeTab(2);
                                    },
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'Join Us',
                                        style: TextStyle(fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
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
                                      child: Text(
                                        'Why Choose Us?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Image.asset(logo, height: 24, width: 24),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.psychology,
                                      color: Colors.green[700],
                                      size: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Encouraging Mental Resilience',
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.lightbulb,
                                      color: Colors.orange[700],
                                      size: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Raising Awareness & Breaking Stigma',
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.support,
                                      color: Colors.red[700],
                                      size: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Connecting People with Support Systems',
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Wrap(
                  spacing: 70,
                  runSpacing: 25,
                  alignment: WrapAlignment.center,
                  children: [
                    _buildStatBox('100+', 'Individuals Empowered'),
                    _buildStatBox('20+', 'Educational Resources'),
                    _buildStatBox('2+', 'Years of Advocacy'),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: _sectionBox(
                        'Who We Are',
                        'Breaking the Stigma, Promoting Wellness',
                        'At ThriveWell, our mission is to educate, support, and empower individuals dealing with mental health challenges. We provide resources, community support, and guidance to help navigate mental well-being.',
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: 225,
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
                  image: AssetImage('lib/assets/wellness.jpg'),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          _sectionBox(
                            'Support & Resources',
                            'Your Mental Wellness Partner',
                            'ThriveWell offers valuable insights, self-help strategies, and a supportive community to help you navigate mental health challenges. We believe that education and awareness are key to fostering resilience and well-being.',
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: 225,
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
                                image: AssetImage('lib/assets/peace.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
                              child: Wrap(
                                spacing: 30,
                                runSpacing: 20,
                                alignment: WrapAlignment.center,
                                children: [
                                  _featBox(
                                    Icons.volunteer_activism,
                                    'Empathy',
                                    'We listen, understand, and support those facing mental health challenges.',
                                  ),
                                  _featBox(
                                    Icons.lightbulb_outline,
                                    'Awareness',
                                    'We educate and break the stigma around mental health issues.',
                                  ),
                                  _featBox(
                                    Icons.handshake,
                                    'Support',
                                    'We foster a safe and uplifting community for mental well-being.',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );

  }

  Widget _buildStatBox(String number, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 80,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
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

  Widget _featBox(IconData icon, String title, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 200,
      width: 165,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 45,
            width: 45,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(icon, color: Colors.green[700], size: 18),
          ),
          SizedBox(height: 5),
          Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 5),
          Text(label,
              textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _sectionBox(String tag, String title, String content) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
            height: 30,
            decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: IntrinsicWidth(
              child: Center(
                child: Text(
                  tag,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.green[700],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            color: Colors.transparent,
            width: 600,
            child: Text(
              content,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
