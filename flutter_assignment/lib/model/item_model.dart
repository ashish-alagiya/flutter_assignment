import 'package:get/get.dart';

class DataModel {
  final String title;
  final String subTitle;
  final RxBool checkBox;
  final RxBool switchbtn;

  DataModel(
    this.title,
    this.subTitle,
    this.checkBox,
    this.switchbtn,
  );
}
