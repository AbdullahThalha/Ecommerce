import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {

  final ValueNotifier<int> _selectedPage =
  ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [1, 2, 3, 4, 5].map((i) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              color: Colors.amber,
              child: Center(
                child: Text(
                  'Item $i',
                  style: const TextStyle(fontSize: 16.0),
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 180.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: true,
            onPageChanged: (int page, _) {
              _selectedPage.value = page;
            },
          ),
        ),
        const SizedBox(height: 16),
        ValueListenableBuilder<int>(
          valueListenable: _selectedPage, // Listen to _selectedPage
          builder: (context, value, _) {
            List<Widget> list = [];
            for (int i = 0; i < 5; i++) {
              // Add a Container for each dot
              list.add(
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: value == i
                        ? Colors.teal // Active dot color
                        : Colors.grey, // Inactive dot color
                  ),
                ),
              );
            }

            // Wrap the Row in a Center widget to ensure it's visible and properly sized
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              ),
            );
          },
        ),
      ],

    );
  }
}

