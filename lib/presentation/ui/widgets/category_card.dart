import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding around each item
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8.0), // Add margin to the Icon
            child: const Icon(Icons.shop, color: Colors.teal, size: 30), // Shop icon
          ),
          const SizedBox(height: 4), // Space between icon and text
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0), // Padding around the text
            child: const Text(
              'Electronics', // Text under the icon
              style: TextStyle(fontSize: 12, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}