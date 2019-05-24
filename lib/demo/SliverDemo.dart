import 'package:flutter/material.dart';
import '../model/post.dart';

//裂片，条子，口子的意思
class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //和AppBar差不多，  固定在屏幕顶部，SliverAppBar可以配置一些相关行为
          SliverAppBar(
            //   title: Text("Android"),
            //字体剧中显示
            centerTitle: true,
            //固定在顶部，不随列表滚动而消失
            pinned: true,
            expandedHeight: 200,
            //伸展的高度，可以做成一个弹性的控件
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Andorid".toUpperCase(), //全部转成大写
                style: TextStyle(
                  fontSize: 15,
                  //字间距
                  letterSpacing: 3,

                  //让间距更细一点
                  fontWeight: FontWeight.w400,
                ),
              ),
              background: Image.network(
                "http://img.hb.aicdn.com/c7f89bec028ecdc8348e80b0911baf10666f932b40396-u7wY7L_fw658",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverSafeArea(
            //展示在安全区域，比如有的刘海屏，从状态栏下显示，不顶到状态栏里面
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: Material(
            borderRadius: BorderRadius.circular(50),
            elevation: 10, //阴影
            shadowColor: Colors.grey.withOpacity(0.5),
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9, //宽高比是16：9
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 32,
                  left: 32,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        posts[index].title,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        posts[index].author,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
      childCount: posts.length,
    ));
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            //宽高显示比例
            childAspectRatio: 1.6),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              child: Image.network(
                posts[index].imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
          childCount: posts.length,
        ));
  }
}
