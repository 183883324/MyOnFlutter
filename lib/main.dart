import 'package:flutter/material.dart';
import 'model/post.dart';

//程序的入口
void main() => runApp(App());

class App extends StatelessWidget {
  //不需要修改数据基础StatelessWidget    需要修改数据继承StatefulWidget
  @override
  Widget build(BuildContext context) {
    // MaterialApp和Scaffold是Flutter提供的两个Widget，其中：
    //MaterialApp是一个方便的Widget，它封装了应用程序实现Material Design所需要的一些Widget。
    //Scaffold组件是Material Design布局结构的基本实现。
    // 此类提供了用于显示drawer、snackbar和底部sheet的API。MaterialApp 的 child 是 Scaffold Widget。
    return MaterialApp(
      //      home应用进入的首页，Scaffold整体布局
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow), //设置主题的颜色为黄色
    );
  }
}

class Home extends StatelessWidget {
  //post  定义第几个
  Widget _listItemBuilder(BuildContext context, int post) {
    //定义返回的列表内容
    return Container(  //而Container则是用来设置背景、设置大小、设置边距(padding)的布局
      color: Colors.white,
      margin: EdgeInsets.all(8.0),   //
      child: Column(  //Column则用来实现纵向的线性布局  Row用来实现横向的线性布局    child所包含的元素只有一个
        children: <Widget>[  //而children是多个所以它里面是数组
          Image.network(posts[post].imageUrl),
          SizedBox( //能强制子控件具有特定宽度、高度或两者都有,使子控件设置的宽高失效
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
          SizedBox(//能强制子控件具有特定宽度、高度或两者都有,使子控件设置的宽高失效
            height: 16.0,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[100],
      //我们可以将 Scaffold 理解为一个布局的容器。可以在这个容器中绘制我们的用户界面。
      appBar: AppBar(
        //app的头
        title: Text("Android"), //appbar的标题
        elevation: 100.0, //Bar下的阴影 默认 4.0
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: posts.length, //列表的长度
        itemBuilder: _listItemBuilder, //列表的内容
      ), //显示hello这个控件
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        "hello111",
        textDirection: TextDirection.ltr, //文字是从左向右阅读
        style: TextStyle(
          //设置样式       文字样式
          fontSize: 40.0, //字体大小
          fontWeight: FontWeight.bold, //    字体加粗
          color: Colors.black87, //设置 字体颜色
        ),
      ),
    );
  }
}
