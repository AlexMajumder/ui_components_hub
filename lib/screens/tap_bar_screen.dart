import 'package:flutter/material.dart';
import 'package:ui_components_hub/fragment/balance_fragment.dart';
import 'package:ui_components_hub/fragment/message_fragment.dart';
import 'package:ui_components_hub/fragment/notification_fragment.dart';
import 'package:ui_components_hub/fragment/post_fragment.dart';
import '../fragment/home_fragment.dart';

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
          appBar: AppBar(title: const Text('Tab Bar Screen',),
          bottom: const TabBar(
              isScrollable: true,
              tabs: [
            Tab(icon: Icon(Icons.home),text: 'home',),
            Tab(icon: Icon(Icons.post_add),text: 'Post',),
            Tab(icon: Icon(Icons.notifications),text: 'Notification',),
            Tab(icon: Icon(Icons.message),text: 'message',),
            Tab(icon: Icon(Icons.balance),text: 'balance',),
          ]),),
          body: TabBarView(children: [
            HomeFragment(),
            PostFragment(),
            NotificationFragment(),
            MessageFragment(),
            BalanceFragment()
          ]),
        ));
  }
}
