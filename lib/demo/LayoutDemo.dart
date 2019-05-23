import 'package:flutter/material.dart';

/**
 * Row 指横着排
 *
 * Column竖着排
 * */

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //spaceAround： 控件平均四周   spaceBetween 等比分配  spaceEvenly平均分配
        //   crossAxisAlignment: CrossAxisAlignment.center,  //交叉轴对齐
        /* children: <Widget>[
          IconBadge(Icons.poll),
          IconBadge(Icons.directions_bike, size: 64,),
          IconBadge(Icons.zoom_out_map),
        ],*/
        children: <Widget>[
         ConstrainedBox(constraints: BoxConstraints(
           minHeight: 100,
           maxWidth: 100
         ),
         child: Container(
           color: Color.fromRGBO(3, 54, 255, 1.0),
         ),
         )
        ],
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Color.fromRGBO(3, 24, 255, 1.0),
      ),
    );
  }

}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 300,
          child: Container(
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0)),
            child: Icon(
              Icons.accessibility,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 35,
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 54, 255, 1.0),
              ]),
              color: Color.fromRGBO(3, 54, 255, 1.0),
              //  borderRadius: BorderRadius.circular(8.0)
            ),
            child: Icon(
              Icons.brightness_2,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
            top: 20,
            right: 20,
            child: Icon(
              Icons.ac_unit,
              size: 32,
              color: Colors.white,
            )),
        Positioned(
            top: 40,
            right: 40,
            child: Icon(
              Icons.ac_unit,
              size: 32,
              color: Colors.white,
            )),
        Positioned(
            top: 60,
            right: 60,
            child: Icon(
              Icons.ac_unit,
              size: 32,
              color: Colors.white,
            )),
        Positioned(
            top: 80,
            right: 80,
            child: Icon(
              Icons.ac_unit,
              size: 32,
              color: Colors.white,
            )),
        Positioned(
            top: 100,
            right: 30,
            child: Icon(
              Icons.ac_unit,
              size: 32,
              color: Colors.white,
            )),
        Positioned(
            top: 30,
            right: 100,
            child: Icon(
              Icons.ac_unit,
              size: 32,
              color: Colors.white,
            )),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
