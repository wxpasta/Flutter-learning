import 'package:flutter/material.dart';

// 简化代码
void main() => runApp(Hello());
// void main() {
//   runApp(Hello());
// }

// 自定义小部件（Widget）
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello Word',
          textDirection: TextDirection.ltr, // 从左向右阅读
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
    );
  }
}
