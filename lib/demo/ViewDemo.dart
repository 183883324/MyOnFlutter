import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //网格布局
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      padding: EdgeInsets.all(8.0), //在控件四周添加8.0的边距
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //控制视图的显示
        crossAxisCount: 4, //设置交叉轴上的数量   如果横着 横向显示几个  竖轴  竖直显示几个
        crossAxisSpacing: 8.0, //间隔大小
        mainAxisSpacing: 8.0, //间隔大小
      ),
      itemBuilder: _gridItemBuilder,
    );
  }
}

//网格布局
class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, generator);
  }

  Widget generator(int index) {
    //generator回调 列表的索引号
    return Container(
      color: Colors.brown,
      alignment: Alignment(0, 0),
      child: Text(
        "item   $index",
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      //交叉轴的最大尺寸
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 5,
      //竖直边距
      mainAxisSpacing: 5,
      //横向边距
      //scrollDirection: Axis.horizontal,  // maxCrossAxisExtent横着代表竖轴最大的高度
      //列表默认是竖直的，可以横向
      children: _buildTiles(100),
    );
  }
}

//网格布局
class GridViewDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, generator);
  }

  Widget generator(int index) {
    //generator回调 列表的索引号
    return Container(
      color: Colors.brown,
      alignment: Alignment(0, 0),
      child: Text(
        "item   $index",
        style: TextStyle(
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 3,
      //每行显示3个
      crossAxisSpacing: 5,
      //竖直边距
      mainAxisSpacing: 5,
      //横向边距
      scrollDirection: Axis.horizontal,
      //列表默认是竖直的，可以横向
      children: _buildTiles(100),
    );
  }
}

class PaxgeViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _pageItemBuilder(BuildContext context, int index) {
      return Stack(
        children: <Widget>[
          //SizedBox.expand 控件会占满所有可用的空间
          SizedBox.expand(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.cover, //全屏填充
            ),
          ),

          Positioned(
              //Android中的Frame布局是相似的 Stack允许子widget堆叠，而Positioned可以给子widget定位（根据Stack的四个角）
              bottom: 8,
              left: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    posts[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    posts[index].author,
                  )
                ],
              ))
        ],
      );
    }

    // TODO: implement build
    return PageView.builder(
        //列表型的数据
        itemCount: posts.length,
        itemBuilder: _pageItemBuilder);
  }
}

class PageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false,//默认是ture，滑倒一半松开手会弹回去。  false  可以滑动在任意位置
      // reverse: true,//视图123456   变成  654321，
      // scrollDirection: Axis.vertical,  //默认是横着的， 设置竖着
      onPageChanged: (currentPage) => debugPrint('page:$currentPage'),
      //回调所在页面返回的索引号
      controller: PageController(
        //初始化显示第几个页面
        initialPage: 2,
        keepPage: false, //页面会记住滚动到那一个 默认ture   false选择不记住。每次点开重新打开第3个页面
        viewportFraction: 0.9, //默认全屏  可以设置显示占屏幕的多少
      ),
      children: <Widget>[
        Container(
          color: Colors.deepPurple[900],
          alignment: Alignment(0, 0),
          child: Text(
            "one",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.yellow[900],
          alignment: Alignment(0, 0),
          child: Text(
            "two",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0, 0),
          child: Text(
            "three",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        )
      ],
    );
  }
}
