import 'package:flutter/material.dart';

class MessageFragment extends StatefulWidget {
  @override
  State<MessageFragment> createState() => _MessageFragmentState();
}

class _MessageFragmentState extends State<MessageFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Message',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Correct property for bold text
          ),
        ),
      ),
    );
  }
}
