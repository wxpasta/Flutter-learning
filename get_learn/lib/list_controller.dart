import 'package:get/get.dart';

class ListController extends GetxController {
  var list = [].obs; // 使用.obs创建响应式列表

  // 添加元素到列表的方法
  void addItem(String item) {
    list.add(item);
  }

  // 移除元素的方法
  void removeItem(String item) {
    list.remove(item);
  }
}
