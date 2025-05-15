import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: Center(
          child: Card(
            elevation: 150,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(126),
            ),
            color: const Color.fromRGBO(199, 70, 178, 4),//
            shadowColor: const Color.fromRGBO(197, 78, 2, 4),
            child: const SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: Text('A card Showing here'),
              ),
            ),
          ),
        ));
  }
}
