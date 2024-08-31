import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'list_controller.dart';

class ListPage extends StatelessWidget {
  final ListController _controller = Get.put(ListController());

  ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List'),
      ),
      body: _ListPage(controller: _controller),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 添加新元素到列表
          _controller.addItem('New Item');
        },
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _ListPage extends StatelessWidget {
  const _ListPage({
    required ListController controller,
  }) : _controller = controller;

  final ListController _controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          itemCount: _controller.list.length, // 使用响应式状态确定列表长度
          itemBuilder: (context, index) {
            final item = _controller.list[index];
            return ListTile(
              title: Text(item),
              onTap: () {
                // 点击列表项时调用控制器的方法进行处理
                _controller.removeItem(item);
              },
            );
          },
        ));
  }
}
