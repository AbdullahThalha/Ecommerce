import 'package:commerce_way/presentation/ui/screens/category_list_screen.dart';
import 'package:commerce_way/presentation/ui/screens/product_list_screen.dart';
import 'package:commerce_way/presentation/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../widgets/category_card.dart';
import '../widgets/home/home_slider.dart';
import '../widgets/home/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset('assets/images/logo.svg'), // Adjust logo path
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.blueAccent),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.call, color: Colors.blueAccent),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none,
                  color: Colors.blueAccent),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const HomeSlider(),
            ScreenHeader(
              title: 'Categories',
              onTap: () {
                Get.to(const CategoryListScreen());
              },
            ),
            SizedBox(
              height: 70, // SizedBox height
              child: ListView.builder(
                scrollDirection: Axis.horizontal, // Horizontal scrolling
                itemCount: 10, // Number of items
                itemBuilder: (context, index) {
                  return const CategoryCard();
                },
              ),
            ),
            const SizedBox(height: 16),
            ScreenHeader(
              title: 'Popular',
              onTap: () {
                Get.to(const ProductListScreen());
              },
            ),
            SizedBox(
              height: 170, // Ensures the height of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    // Add spacing
                    child: ProductCard(), // Horizontal cards
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ScreenHeader(
              title: 'Special',
              onTap: () {
                Get.to(const ProductListScreen());
              },
            ),
            SizedBox(
              height: 170, // Ensures the height of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    // Add spacing
                    child: ProductCard(), // Horizontal cards
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            ScreenHeader(
              title: 'New',
              onTap: () {
                Get.to(const ProductListScreen());
              },
            ),
            SizedBox(
              height: 170, // Ensures the height of the horizontal list
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    // Add spacing
                    child: ProductCard(), // Horizontal cards
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
