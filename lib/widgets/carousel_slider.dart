import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyCarouselSlider extends StatelessWidget {
   MyCarouselSlider({required this.imageList,required this.onPageChanged,super.key});

   List<String> imageList;
   Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: imageList.length,
        itemBuilder:
            (BuildContext context, int index, int pageViewIndex) =>
            buildSliderImage(index),
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16 / 9,
           viewportFraction: 0.78,
         // viewportFraction:1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: onPageChanged,
          scrollDirection: Axis.horizontal,
        ));
  }

  Container buildSliderImage(int index) {
    return Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                 // border: Border.all(color: Colors.black)


              ),
                child:Image.asset(imageList[index],height:200,width: double.infinity,fit: BoxFit.cover,),
          );
  }
}
