import 'package:flutter/material.dart';

class PostFragment extends StatefulWidget {
  @override
  State<PostFragment> createState() => _PostFragmentState();
}

class _PostFragmentState extends State<PostFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Post',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Correct property for bold text
          ),
        ),
      ),
    );
  }
}
