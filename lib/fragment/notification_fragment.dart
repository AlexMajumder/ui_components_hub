import 'package:flutter/material.dart';

class NotificationFragment extends StatefulWidget {
  @override
  State<NotificationFragment> createState() => _NotificationFragmentState();
}

class _NotificationFragmentState extends State<NotificationFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Notification',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Correct property for bold text
          ),
        ),
      ),
    );
  }
}
