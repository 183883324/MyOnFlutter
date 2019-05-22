import 'package:flutter/material.dart';
import 'demo/listViewDemo.dart';
import 'demo/DrawerDemo.dart';
import 'demo/BottomNavigationBarDemo.dart';
  import 'demo/listViewDemo.dart';

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
      debugShowCheckedModeBanner: false, //去掉横幅
      //      home应用进入的首页，Scaffold整体布局
      home: Home(),
      theme: ThemeData(
          splashColor: Colors.white70,
          highlightColor: Color.fromRGBO(225, 225, 225, 0.5), //高亮颜色
          primarySwatch: Colors.yellow), //设置主题的颜色为黄色
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          //为界面提供基本的结构
          backgroundColor: Colors.green[100],
          //我们可以将 Scaffold 理解为一个布局的容器。可以在这个容器中绘制我们的用户界面。
          appBar: AppBar(
//              leading: IconButton(
//                  //左边的图标
//                  icon: Icon(Icons.menu),
//                  tooltip: "Navigration",
//                  onPressed: () => debugPrint("第一个app")),
            //app的头
            title: Text("Android"),
            //appbar的标题
            elevation: 100.0,
            //Bar下的阴影 默认 4.0
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: "Search",
                  onPressed: () => debugPrint("第一个按钮")),
            ],
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              //下划线跟图标一样长
              indicatorWeight: 1.0,
              //下划线的高度
              unselectedLabelColor: Colors.black38,
              //没有呗选中的时候图标的颜色
              indicatorColor: Colors.black54,
              //下划线的颜色
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          drawer: DrawerDemo(),
          body: TabBarView(
            children: <Widget>[
              // ignore: undefined_operator, undefined_operator, undefined_operator
              listViewDemo(),
              Icon(Icons.change_history, size: 128.0, color: Colors.amber),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.cyanAccent)
            ],
          ),
          //显示hello这个控件
          bottomNavigationBar: BoottomNacigationBarDemo(),
        ));
  }


}
