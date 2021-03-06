import 'package:flutter/material.dart';
import '../model/post.dart';
import './PostDemo.dart';

class listViewDemo extends StatelessWidget {
  //post  定义第几个
  Widget _listItemBuilder(BuildContext context, int post) {
    //定义返回的列表内容
    return Container(
      //而Container则是用来设置背景、设置大小、设置边距(padding)的布局
      color: Colors.white,
      margin: EdgeInsets.all(8.0), //
      child: Stack(
        children: <Widget>[
          Column(
            //Column则用来实现纵向的线性布局  Row用来实现横向的线性布局    child所包含的元素只有一个
            children: <Widget>[
              AspectRatio(
                //溅墨动画效果
                aspectRatio: 16 / 9,
                child: //而children是多个所以它里面是数组
                    Image.network(
                  posts[post].imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                //能强制子控件具有特定宽度、高度或两者都有,使子控件设置的宽高失效
                height: 16.0,
              ),
              Text(
                posts[post].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[post].author,
                style: Theme.of(context).textTheme.subhead, //副标题
              ),
              SizedBox(
                //能强制子控件具有特定宽度、高度或两者都有,使子控件设置的宽高失效
                height: 16.0,
              )
            ],
          ),
          Positioned.fill(
              child: Material(
            color: Colors.transparent,
            child: InkWell(
              //水波纹效果
              splashColor: Colors.white.withOpacity(0.3),
              highlightColor: Colors.white.withOpacity(0.1),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostShow(post: posts[post])));
              },
            ),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: posts.length, //列表的长度
      itemBuilder: _listItemBuilder, //列表的内容
    );
  }
}
