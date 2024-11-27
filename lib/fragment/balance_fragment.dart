import 'package:flutter/material.dart';

class BalanceFragment extends StatefulWidget {
  @override
  State<BalanceFragment> createState() => _BalanceFragmentState();
}

class _BalanceFragmentState extends State<BalanceFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Balance',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Correct property for bold text
          ),
        ),
      ),
    );
  }
}
