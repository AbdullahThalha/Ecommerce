import 'package:commerce_way/presentation/ui/utility/app_colors.dart';
import 'package:commerce_way/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Shadow depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Rounded corners
      ),
      child: SizedBox(
        width: 120,
        child: Column(
          children: [
            Container(
              height: 100, // Height

              decoration: BoxDecoration(
                  color: AppColor.primaryColor.withOpacity(0.1),
                  // Background color
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage(
                    ImageAssets.shoePng,
                  )) // Rounded edges
                  ),
            ),
            const Text(
              'Nike shoe',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // Align items
              children: [
                const Text(
                  '\$90', // Price
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 4),

                const Wrap(
                  children: [
                    Icon(
                      Icons.star, // Star icon
                      color: Colors.amber,
                      size: 16,
                    ),
                    Text(
                      '\$90', // Second price
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                // Space between price and love button
                Card(
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white70,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
