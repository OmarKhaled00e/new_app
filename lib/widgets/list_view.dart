import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  const NewsListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: NewsTile(
            articaleModel: articles[index],
          ),
        ),
      ),
    );
  }
}
