import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_components_hub/fragment/home_fragment.dart';
import 'package:ui_components_hub/onboarding_pages/intro_component.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const IntroComponent(
        title: 'Make your life easy',
        description: 'IT our task',
        imagePath: 'assets/images/intro_images/image1.png'),
    const IntroComponent(
        title: 'It save your time',
        description: 'Now you can find that you need 30% faster',
        imagePath: 'assets/images/intro_images/image2.png'),
    const IntroComponent(
        title: 'title',
        description: 'description',
        imagePath: 'assets/images/intro_images/image3.jpg'),
  ];

  void _skip() {
    _pageController.animateToPage(_pages.length - 1,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void _onNext() {
    if (_currentIndex < _pages.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomeFragment()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) => _pages[index],
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _pages.length,
          ),
          _currentIndex == _pages.length - 1
              ? const SizedBox.shrink()
              : Positioned(
                  bottom: 30,
                  left: 20,
                  child: TextButton(
                      onPressed: () {
                        _skip();
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.red),
                      )),
                ),
          Positioned(
            bottom: 30,
            right: 20,
            child: TextButton(
                onPressed: () {
                  _onNext();
                },
                child: Text(
                  _currentIndex == _pages.length - 1 ? 'Finish' : 'Next',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                )),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 30,
            child: Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: _pages.length,
                effect: const WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.blue,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
