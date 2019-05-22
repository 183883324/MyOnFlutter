import 'package:flutter/material.dart';

class BoottomNacigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BoottomNacigationBarDemoState();
  }
}

class _BoottomNacigationBarDemoState extends State<BoottomNacigationBarDemo> {
  int _currentIndex = 3;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
//导航栏大于三个要设置type
      fixedColor: Colors.black,
//选中的时候显示的颜色
      currentIndex: _currentIndex,
//默认选择第一个
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.explore), title: Text("导航")),
        BottomNavigationBarItem(icon: Icon(Icons.history), title: Text("搜索")),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("列表")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的")),
      ],
      onTap: _onTapHandler,
      backgroundColor: Colors.black12,
    );
  }
}
