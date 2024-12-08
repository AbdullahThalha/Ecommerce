import 'package:commerce_way/presentation/ui/screens/auth/otp_verification_screen.dart';
import 'package:commerce_way/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() =>
      _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SvgPicture.asset(
                  ImageAssets.craftyBayLogoSVG,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Complete Profile',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Get started with us by entering your details!',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.grey,
                    ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Last Name',
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Mobile',
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'City',
                ),
              ),
              const SizedBox(height: 12,),
              TextFormField(
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: 'Shipping Address',

                ),
              ),
              const SizedBox(height: 12,),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const OTPVerificationScreen());
                    },
                    child: const Text('Complete'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
