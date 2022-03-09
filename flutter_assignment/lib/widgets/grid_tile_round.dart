import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/index.dart';
import '../controller/index.dart';

class GridTileRound extends StatelessWidget {
  final int index;
  const GridTileRound(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GridTile(
        child: GestureDetector(
          onTap: () => controller.onCheckBoxTap(index),
          child: Container(
            color: Colors.lightBlueAccent,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    lightData[index].title.toString(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  subtitle: Text(
                    lightData[index].subTitle.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  trailing: Obx(
                    () => Checkbox(
                      value: lightData[index].checkBox.value,
                      onChanged: (value) => controller.onCheckBoxTap(index),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      activeColor: Colors.white,
                      checkColor: Colors.blue,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                ),
                Obx(
                  () => SwitchListTile.adaptive(
                    value: lightData[index].switchbtn.value,
                    onChanged: (value) => controller.onSwitchTap(index),
                    title: Text(
                      lightData[index].switchbtn.value ? 'ON' : 'OFF',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
