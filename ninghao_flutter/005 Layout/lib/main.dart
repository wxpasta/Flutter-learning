import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
// import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import './demo/basic_demo.dart';
import './demo/Layout_demo.dart';

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
        debugShowCheckedModeBanner: false, //不显示右上角的DEBUG标签
        home: Home(),
        theme: ThemeData(
            primarySwatch: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('NINGHAO'),
          // leading: IconButton( // 左边添加按钮
          //     icon: Icon(Icons.menu),
          //     tooltip: 'Menu',
          //     onPressed: () => debugPrint('Menu button is pressed.'),
          //   ),
          actions: <Widget>[
            // 右边添加按钮
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未被选中标签的颜色
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            // Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            BasicDemo(),
            // Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            LayoutDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
