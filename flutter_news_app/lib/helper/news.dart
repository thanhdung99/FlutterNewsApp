import 'dart:convert';

import 'package:flutter_news_app/models/ariticle_model.dart';
import 'package:http/http.dart' as http;
class News{
  List<ArticleModel> news =[];
  Future<void> getNews() async{
    String url = "https://newsapi.org/v2/top-headlines?country=us&apiKey=61000e483eef497aa2a445677f4d1edb";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if(jsonData['status'] == "ok"){
      jsonData['articles'].forEach((element){

        if(element['description'] != null && element['urlToImage'] != null){
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']
          );
          news.add(articleModel);

        }
      });
    }
  }
}
class CategoryNews{
  List<ArticleModel> news =[];
  Future<void> getNews(String category) async{
    String url = "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=61000e483eef497aa2a445677f4d1edb";
    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);
    if(jsonData['status'] == "ok"){
      jsonData['articles'].forEach((element){

        if(element['description'] != null && element['urlToImage'] != null){
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']
          );
          news.add(articleModel);
        }
      });
    }
  }
}
