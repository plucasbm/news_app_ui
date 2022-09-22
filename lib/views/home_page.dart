import 'package:flutter/material.dart';
import 'package:news_app_ui/models/article_model.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.white),
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _NewsOfTheDay(article: article),
          _BreakingNews(articles: Article.articles),
        ],
      ),
    );
  }
}

class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Últimas Notícias',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                'Mais',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index){
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(
                        context,
                        '/article',
                        arguments: articles[index],
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(width: MediaQuery.of(context).size.width * 0.5, imageUrl: articles[index].imageUrl),
                        const SizedBox(height: 5),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${DateTime.now().difference(articles[index].createdAt).inHours} horas atrás',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'Por: ${articles[index].author}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}

class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      imageUrl: article.imageUrl,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150), 
            children: [
              Text('Notícias do dia',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white,
                ),
              ),
            ]
          ),
          const SizedBox(height: 10),
          Text(article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              height: 1.25,
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: (){},
            child: Row(
              children: [
                Text(
                  'Ver mais', 
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(Icons.arrow_right_alt, color: Colors.white)
              ],
            ),
          ),
        ],
      ),
    );
  }
}