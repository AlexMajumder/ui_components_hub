import 'package:flutter/material.dart';
import '../slider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' carocsle Slider auto slide'),),
      body: PictureSliderWidget(),
    );
  }
}
