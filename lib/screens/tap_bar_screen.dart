import 'package:flutter/material.dart';

class TapBarScreen extends StatefulWidget {
  const TapBarScreen({super.key});

  @override
  State<TapBarScreen> createState() => _TapBarScreenState();
}

class _TapBarScreenState extends State<TapBarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(title: Text('Tab Bar Screen',),
          bottom: const TabBar(
              isScrollable: true,
              tabs: [
            Tab(icon: Icon(Icons.home),text: 'home',),
            Tab(icon: Icon(Icons.post_add),text: 'Post',),
            Tab(icon: Icon(Icons.notifications),text: 'Notification',),
            Tab(icon: Icon(Icons.message),text: 'message',),
            Tab(icon: Icon(Icons.balance),text: 'balance',),
          ]),),
        ));
  }
}
