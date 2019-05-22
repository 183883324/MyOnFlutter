import 'package:flutter/material.dart';

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
