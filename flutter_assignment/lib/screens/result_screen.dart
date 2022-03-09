import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/index.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();

    return Scaffold(
      appBar: AppBar(title: const Text('Selected Items')),
      body: controller.selectedItems.isEmpty
          ? const Center(
              child: Text('No Items'),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: controller.selectedItems.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.25,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
              ),
              itemBuilder: (context, index) => ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GridTile(
                  child: Container(
                    color: Colors.lightBlueAccent,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            controller.selectedItems[index].title.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          subtitle: Text(
                            controller.selectedItems[index].subTitle.toString(),
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade700,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                          trailing: Obx(
                            () => Checkbox(
                              value: controller
                                  .selectedItems[index].checkBox.value,
                              onChanged: (value) {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              activeColor: Colors.white,
                              checkColor: Colors.blue,
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                        ),
                        Obx(
                          () => SwitchListTile.adaptive(
                            value:
                                controller.selectedItems[index].switchbtn.value,
                            onChanged: (value) {},
                            title: Text(
                              controller.selectedItems[index].switchbtn.value
                                  ? 'ON'
                                  : 'OFF',
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
            ),
    );
  }
}
