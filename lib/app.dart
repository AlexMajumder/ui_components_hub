import 'package:flutter/material.dart';

import 'onboarding_pages/introduction_screen.dart';
class WidgetApp extends StatefulWidget {
  const WidgetApp({super.key});

  @override
  State<WidgetApp> createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IntroductionScreen(),//TapBarScreen(),
    );
  }
}
