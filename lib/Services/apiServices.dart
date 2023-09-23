// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:newsia/Model/articleModel.dart';

// class ApiServices {
//   final endUrl =
//       'https://newsapi.org/v2/everything?q=tesla&from=2023-08-16&sortBy=publishedAt&apiKey=96b9899434d04821acdb41e4e74be3ce';

//   Future<List<Article>> getArticle() async {
//     final res = await get(endUrl);

//     if (res.statusCode == 200) {
//       Map<String, dynamic> json = jsonDecode(res.body);
//     } else {
//       print("Api does not getting response");
//     }
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsia/Model/articleModel.dart';

class ApiServices {
  final endUrl =
      'https://newsapi.org/v2/everything?q=tesla&from=2023-08-16&sortBy=publishedAt&apiKey=96b9899434d04821acdb41e4e74be3ce';
  Future<List<Article>> getArticle() async {
    try {
      final res = await http.get(Uri.parse(endUrl));

      if (res.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(res.body);
        final List<dynamic> articleData = json['articles'];
        final List<Article> articles =
            articleData.map((article) => Article.fromJson(article)).toList();
        return articles;
      } else {
        throw "This is an error";
      }
    } catch (e) {
      throw Exception('Failed to load articles: $e');
    }
  }
}
