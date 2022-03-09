import 'package:get/get.dart';

import '../data/index.dart';
import '../model/index.dart';

class HomeController extends GetxController {
  void onCheckBoxTap(index) =>
      lightData[index].checkBox.value = !lightData[index].checkBox.value;

  void onSwitchTap(index) =>
      lightData[index].switchbtn.value = !lightData[index].switchbtn.value;

  List<DataModel> get selectedItems =>
      lightData.where((itemData) => itemData.checkBox.value).toList();
}
