import 'package:flutter/material.dart';

class TabBarTop extends StatelessWidget {
  const TabBarTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: const [
        Tab(text: "Hall"),
        Tab(text: "Dining"),
        Tab(text: "Bathroom"),
        Tab(text: "Bedroom"),
      ],
      labelPadding: EdgeInsets.zero,
      labelColor: Colors.black,
      labelStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.clip,
      ),
      indicator: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
