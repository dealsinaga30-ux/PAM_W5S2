import 'package:flutter/material.dart';

class TabbarDefaultWidget extends StatelessWidget {
  const TabbarDefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('FIC - Tabbar'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_boat)),
              Tab(icon: Icon(Icons.directions_bus)),
              Tab(icon: Icon(Icons.directions_ferry)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
      ),
    );
  }
}
