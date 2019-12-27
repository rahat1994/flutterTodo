import 'package:http/http.dart';

class Article {
  final int userId;
  final int id;
  final String title;
  final String body;
  final String url = 'https://jsonplaceholder.typicode.com/posts/1';
  Article({this.userId, this.id, this.title, this.body});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Future getData() async {
    Response response = await get(url);

    if(response.statusCode == 200) {
      return response.body;
    } else {
      print(response.statusCode);
    }
  }
}