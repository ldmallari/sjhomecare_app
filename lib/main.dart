import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:sjhomecare_app/screens/article.dart';
import 'package:sjhomecare_app/screens/home.dart';
import 'package:sjhomecare_app/screens/support.dart';
import 'package:sjhomecare_app/utils/api_handler.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        final provider = ArticleProvider();
        provider.fetchPhotos();
        return provider;
      },
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ArticleScreen(),
    const SupportScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          unselectedItemColor: const Color(0xff757575),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Colors.green,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.newspaper),
              title: const Text("Article"),
              selectedColor: Colors.green,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.contact_support),
              title: const Text("Support"),
              selectedColor: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const HomePage(title: 'Home Page');
  }
}

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const ArticlePage(title: 'Article Page');
  }
}

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const SupportPage(title: 'Support Page');
  }
}
