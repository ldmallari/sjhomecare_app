import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sjhomecare_app/utils/api_handler.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    var articleProvider = Provider.of<ArticleProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(),
          child: ListView.builder(
            itemCount: articleProvider.article.length,
            itemBuilder: (BuildContext context, int index) {
              final item = articleProvider.article[index];

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(8.0),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            IndividualArticle(heroTag: index, item: item),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xFFE0E0E0)),
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  "${item['shortDescription']}",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icons.bookmark_border_rounded,
                                    Icons.share,
                                    Icons.more_vert
                                  ].map((e) {
                                    return InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.only(right: 8.0),
                                        child: Icon(e, size: 16),
                                      ),
                                    );
                                  }).toList(),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 200,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(item['image']),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class IndividualArticle extends StatelessWidget {
  final int heroTag;
  
  final dynamic item;

  const IndividualArticle({super.key, required this.heroTag, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item['title'])),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(item['image']),
                ),
              ),
            ),
          ),
          Expanded(
            child: Text(
              item['content'],
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          )
        ],
      ),
    );
  }
}