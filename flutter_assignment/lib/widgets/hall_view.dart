import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/index.dart';
import '../screens/index.dart';
import '../widgets/index.dart';

class HallView extends StatelessWidget {
  const HallView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: lightData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.25,
              crossAxisSpacing: 25,
              mainAxisSpacing: 25,
            ),
            itemBuilder: (context, index) => GridTileRound(index),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
            onPressed: () => Get.to(const ResultScreen()),
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
