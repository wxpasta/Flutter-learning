import 'package:flutter/material.dart';
import 'model/post.dart';

// 简化代码
void main() => runApp(App());
// void main() {
//   runApp(App());
// }

// 自定义小部件（Widget）
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      )
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0),
          Text(
            posts[index].title,
            // style: Theme.of(context).textTheme.title
            style: Theme.of(context).textTheme.headline6
          ),
          Text(
            posts[index].author,
            // style: Theme.of(context).textTheme.subhead
            style: Theme.of(context).textTheme.subtitle1
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('NINGHAO'),
          elevation: 0.0, // 阴影显示
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder,
        )
      );
    }
}

class Hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
        child: Text(
          'hello',
          textDirection: TextDirection.ltr,// 从左向右阅读
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          )
        ),
      );
    }
}