import 'package:flutter/material.dart';
import 'package:news_app_ui/widgets/widgets.dart';

import '../models/article_model.dart';
import '../widgets/bottom_navigation_bar.dart';

class DiscoverScreen extends StatelessWidget {
  DiscoverScreen({Key? key}) : super(key: key);

  @override
  List<String> tabs = ['Política', 'Saúde', 'Arte', 'Ciência', 'Esportes'];

  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.black),
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
          children: [
           const _DiscoverNews(),
           _CategoryNews(tabs: tabs),
          ],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final articles = Article.articles;
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          tabs: tabs.map((tab) => Tab(icon: Text(tab, style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold)))).toList(),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs.map(
              (tab) => ListView.builder(
                shrinkWrap: true,
                itemCount: tabs.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: (){
                      Navigator.pushNamed(
                        context,
                        '/article',
                        arguments: articles[index],
                      );
                    },
                    child: Row(
                      children: [
                        ImageContainer(
                          width: 80,
                          height: 80,
                          imageUrl: articles[index].imageUrl,
                          margin: const EdgeInsets.all(10),
                          borderRadius: 5,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(articles[index].title, maxLines: 2, overflow: TextOverflow.clip, style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                              )),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(Icons.schedule, size: 18),
                                  const SizedBox(width: 5),
                                  Text('${DateTime.now().difference(articles[index].createdAt).inHours}h'),
                                  const SizedBox(width: 20),
                                  Icon(Icons.visibility, size: 18),
                                  const SizedBox(width: 5),
                                  Text('${articles[index].views} visualizações'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ).toList(),
          ),
        ),
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Procurar',
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Notícias de todos os cantos do mundo!',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Procurar',
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.tune, color: Colors.grey)
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}