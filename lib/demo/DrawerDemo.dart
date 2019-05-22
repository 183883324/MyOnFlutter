import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text("刘俊云",style: TextStyle(fontWeight: FontWeight.bold),),
            accountEmail: Text("liujun@qq.com")
            ,
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("http://img.hb.aicdn.com/05927bdaec8213d858a0c3ec201ea0f405ad40e845d02-qJDlLb_fw658"),
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage("http://img.hb.aicdn.com/9b31060eaa4185bbb660af61d8c72206746657782631e-IviKwU_fw658"),
                    fit: BoxFit.cover,//填充屏幕,
                    colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight)
                )


            ),
          ),

          ListTile(
            title: Text(
              "Message",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
          ListTile(
            title: Text(
              "Favorite",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context), //关闭抽屉
          ),
          ListTile(
            title: Text(
              "Setting",
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context), //关闭抽屉
          )
        ],
      ),
    );
  }

}