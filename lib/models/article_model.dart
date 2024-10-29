class ArticleModel {
  final String image;
  final String title;
  final String subTitle;

  ArticleModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticaleModel.fromJson(json) {
    return ArticaleModel(
      url: json["url"],
      image: json["urlToImage"],
      subTitle: json["description"],
      title: json["title"],
    );
  }
}
