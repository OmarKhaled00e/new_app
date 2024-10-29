import 'dart:math';

import 'package:dio/dio.dart';
import 'package:new_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

Future <List<ArticleModel>> getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=b2bbd340a066446cb3a18cdd64019975');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articelsList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articelsList.add(articleModel);
    }
    return articelsList;
  }
}
