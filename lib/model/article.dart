class Article {
  int id;
  String title;
  String type;
  int postedBy;
  String category;
  int dateAdded;
  Map<String, dynamic> newsBody;

  Article({
    this.id = 0,
    this.dateAdded = 0,
    required this.title,
    required this.type,
    required this.postedBy,
    required this.category,
    required this.newsBody,
  });

  factory Article.fromJson(Map<String, dynamic> jsonArticle) {
    return Article(
      id: jsonArticle['id'],
      title: jsonArticle['title'],
      type: jsonArticle['type'],
      postedBy: jsonArticle['postedBy'],
      category: jsonArticle['category'],
      newsBody: jsonArticle['body'],
    );
  }
}
