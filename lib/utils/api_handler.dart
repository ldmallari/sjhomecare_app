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

class PostAPI {
  final String apiUrl = 'https://sjhc-api.onrender.com/contacts';

  Future<Map<String, dynamic>?> postData(String name, String email, String message) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({'name': name, 'email': email, 'message': message}),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to post data');
      }
    } catch (e) {
      return null;
    }
  }
}
