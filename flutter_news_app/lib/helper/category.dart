import 'dart:convert';
import 'package:flutter_news_app/models/category_model.dart';
import 'package:http/http.dart' as http;
class Category{
  List<CategoryModel> categories = [];
  Future<void> getCategories() async {
    // String url = "http://10.0.2.2:8080/categories";
    // var response = await http.get(url);
    // var jsonData = jsonDecode(response.body);
    // if(jsonData['status'] == "ok"){
    //   jsonData['categories'].forEach((element){
    //     if(element['name'] != null && element['url'] != null){
    //       CategoryModel categoryModel = CategoryModel(
    //           name: element['name'],
    //           url: element['url'],
    //       );
    //       categories.add(categoryModel);
    //     }
    //   });
    // }
    CategoryModel categoryModel = CategoryModel(
      name: 'Business',
      url: 'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80'
    );
    categories.add(categoryModel);
    categoryModel = CategoryModel(
        name: 'Entertainment',
        url: 'https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
    );
    categories.add(categoryModel);
    categoryModel = CategoryModel(
      name: 'General',
      url: 'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
    );
    categories.add(categoryModel);
    categoryModel = CategoryModel(
        name: 'Health',
        url: 'https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80'
    );
    categories.add(categoryModel);
    categoryModel = CategoryModel(
        name: 'Science',
        url: 'https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80'
    );
    categories.add(categoryModel);
    categoryModel = CategoryModel(
        name: 'Sports',
        url: 'https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
    );
    categories.add(categoryModel);
    categoryModel = CategoryModel(
        name: 'Technology',
        url: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'
    );
    categories.add(categoryModel);
  }

}