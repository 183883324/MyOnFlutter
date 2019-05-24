import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(onPressed: null, child: Text("Home")),
            FlatButton(
              child: Text(
                "About",
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
//              onPressed: () => {
//                    Navigator.of(context).push(MaterialPageRoute(
//                        builder: (BuildContext contexr) => Page(
//                              Titale: "About",
//                            )))
//                  },
            )
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String Titale;

  Page({this.Titale});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(Titale),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
