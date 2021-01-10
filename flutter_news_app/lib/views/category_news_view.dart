import 'package:flutter/material.dart';
import 'package:flutter_news_app/helper/news.dart';
import 'package:flutter_news_app/models/ariticle_model.dart';
import 'package:flutter_news_app/views/article_view.dart';

class CategoyNewsView extends StatefulWidget {

  final String category;
  CategoyNewsView({this.category});

  @override
  _CategoyNewsViewState createState() => _CategoyNewsViewState();
}

class _CategoyNewsViewState extends State<CategoyNewsView> {

  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  getNews() async{
    CategoryNews categoryNews = CategoryNews();
    await categoryNews.getNews(widget.category);
    articles = categoryNews.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Flutter", style: TextStyle(color: Colors.blue),),
            Text("News", style: TextStyle(color: Colors.black),),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading ? Center(
        child: Container(
          child: CircularProgressIndicator(),
        ),
      ) : SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              /// Blogs
              Container(
                padding: EdgeInsets.only(top: 6),
                child: ListView.builder(
                    itemCount: articles.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return BlogTitle(
                        imageUrl: articles[index].urlToImage,
                        title: articles[index].title,
                        desc: articles[index].description,
                        url: articles[index].url,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class BlogTitle extends StatelessWidget {

  final String imageUrl, title, desc, url;
  BlogTitle({@required this.imageUrl, @required this.title, @required this.desc, @required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => ArticleView(
              blogUrl: url,
            )
        ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            SizedBox(height: 8,),
            Text(title, style: TextStyle(fontSize: 17, color: Colors.black87, fontWeight: FontWeight.w500,), textAlign: TextAlign.justify,),
            SizedBox(height: 8,),
            Text(desc, style: TextStyle(color: Colors.black54), textAlign: TextAlign.justify,)
          ],
        ),
      ),
    );
  }
}
