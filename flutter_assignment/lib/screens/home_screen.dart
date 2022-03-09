import 'package:flutter/material.dart';

import '../widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBarTop(),
        ),
        body: const TabBarView(
          children: [
            HallView(),
            Center(child: Text('Dining screen')),
            Center(child: Text('Bathroom screen')),
            Center(child: Text('Bedroom screen')),
          ],
        ),
      ),
    );
  }
}
