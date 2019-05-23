import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //  color: Colors.yellow[100],
      decoration: BoxDecoration(//背景
          image: DecorationImage(//Opacity:透明度
             colorFilter: ColorFilter.mode(Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight),
              fit: BoxFit.cover,//平铺
           // alignment: Alignment.topCenter,//设置图片的位置顶部中央，
              image: NetworkImage(
                  "http://img.hb.aicdn.com/e411e58dbd56ad3227724bbbbd7eb07416e4b43a46a41-JGzo9p_fw658"))),
      //整体是一个水平布局
      child: Row(
        //MainAxisAlignment.center  主轴剧中

        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),

            //内边距所有16
            padding: EdgeInsets.all(16.0),
            //  padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
            margin: EdgeInsets.all(8.0),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                //decoration:背景装饰
                color: Color.fromRGBO(3, 54, 255, 1.0),
                border: Border.all(
                  color: Colors.indigoAccent[100],
                  width: 3,
                  style: BorderStyle.solid,
                ),
                //  borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  //阴影效果
                  BoxShadow(
                      offset: Offset(6, 7),
                      //偏移量  x y 偏移
                      //color:Color.fromRGBO(16, 20, 188, 1.0),   //16进制方式：     最后一个参数为 0.0～1.0 之间透明度；
                      color: Color(0xFFEE5048),
                      //16进制方式：     最后一个参数为 0.0～1.0 之间透明度；
                      blurRadius: 20.0,
                      //阴影模糊效果
                      spreadRadius: 3.0 //正负 扩散或者缩小阴影面积
                      )
                ],
                shape: BoxShape.circle,
                //圆形效果  会和   borderRadius: BorderRadius.circular(20), 有冲突
                gradient: RadialGradient(
                  colors: [
                    Color(0xE74F3F),
                    Color(0x333333),
                  ],
                )),
//单独设置圆角效果
//            borderRadius: BorderRadius.only(
//              bottomLeft: Radius.circular(4),
//              bottomRight: Radius.circular(4),
//            ),
//                border: Border(
//                    top: BorderSide(  //顶部添加个边框
//                      color: Colors.indigoAccent[100],
//                      width: 30,
//                      style: BorderStyle.solid,
//                    ),
//                    bottom: BorderSide( //下部添加个边框
//                      color: Colors.indigoAccent[100],
//                      width: 30,
//                      style: BorderStyle.solid,
//                    ))),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
        text: TextSpan(
      text: "liujin",
      style: TextStyle(
        color: Colors.deepPurpleAccent,
        fontSize: 20.0,
        fontStyle: FontStyle.italic, //斜体
        fontWeight: FontWeight.w500, //粗细
      ),
      children: [
        TextSpan(
            text: "123",
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.yellow,
            ))
      ],
    ));
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);
  final String _a = "李白";
  final String _b = "刘俊";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      //$_a 和$_b把字符串引进字符串
      "$_a 和$_b是一对好基友，自去年8700万用户数据被不当利用一事曝光之后，集董事长和CEO两大职权于一身的Facebook创始人马克·扎克伯格就饱受质疑，投资者也曾要求他辞任董事长。近日Facebook一名前高管也发表了对其权力过大的看法，但与投资者去年要求他放弃董事长不同的是，这名前高管建议扎克伯格放弃CEO一职，将精力集中在产品方面。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis, //省略号
    );
  }
}
