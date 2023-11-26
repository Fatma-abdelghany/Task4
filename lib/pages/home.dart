import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task4/utils/constants/image_constants.dart';

import '../widgets/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  List<String> imageList = ImageConstants().sliderImageList;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyCarouselSlider(
                imageList:imageList,
                onPageChanged: (int currentIndex, CarouselPageChangedReason ) {
                  selectedIndex=currentIndex;
                  setState(() {});
                },
              ),
              SizedBox(height: 5,),
              AnimatedSmoothIndicator(
                activeIndex: selectedIndex,
                count: imageList.length,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.orange,

                  ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
