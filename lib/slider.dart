import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PictureSliderWidget extends StatelessWidget {
  PictureSliderWidget({
    super.key,
  });

  final List<String> imagePaths = [
    'assets/images/slider_image/slider_image_1.jpg',
    'assets/images/slider_image/slider_image_2.jpg',
    'assets/images/slider_image/slider_image_3.jpg',
    'assets/images/slider_image/slider_image_4.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 170.0, // Height of the slider
        autoPlay: true, // Auto-slide images
        enlargeCenterPage: true, // Highlight the center image
        //aspectRatio:0.1,
        enableInfiniteScroll: true, // Infinite scrolling
        autoPlayInterval: const Duration(seconds: 3), // Interval for auto-slide
      ),
      items: imagePaths.map((path) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}