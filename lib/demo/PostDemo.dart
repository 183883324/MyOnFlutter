import '../model/post.dart';
import 'package:flutter/material.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("${post.title}"),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.all(32),
            width: double.infinity, //让容器占满所有可用的宽度
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${post.title}",
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  "${post.author}",
                  style: Theme.of(context).textTheme.subhead,
                ),

                Text(
                  "${post.description}",
                  style: Theme.of(context).textTheme.body1,
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
