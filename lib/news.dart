
class News {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;

  News({this.source, this.author, this.title, this.description, this.url, this.urlToImage, this.publishedAt});

  factory News.fromJson(Map<String, dynamic> json){
    return new News(
      //  source: (json['source'] as List)
      //   ?.map((e) =>
      //       e == null ? null : new Source.fromJson(e as Map<String, dynamic>))
      //   ?.toList(),
      source: new Source.fromJson(json['source']),
      author: json['author'],
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt']
    );


}
}

class Source{
  String name;
  String id;

  Source({this.name, this.id});

  factory Source.fromJson(Map<String, dynamic> json){
    return new Source(name: json['name'],
    id: json['id']);
  }

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'name': name, 'id': id};
}