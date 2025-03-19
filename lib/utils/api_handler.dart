import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ArticleProvider extends ChangeNotifier {
  List _articles = [];

  List get article => _articles;

  Future<void> fetchPhotos() async {
    const apiUrl = 'https://sjhc-api.onrender.com/articles';
    final response = await http.get(Uri.parse(apiUrl));
    final data = json.decode(response.body);
    
    _articles = data;
    notifyListeners();
  }
}
