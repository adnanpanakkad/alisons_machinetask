import 'package:alisons_task/widgets/brands/brandscreen_appbar.dart';
import 'package:flutter/material.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(60.0),
      //   child: BrandscreenAppbar(),
      // ),
      body: Stack(
        children: [
          Positioned(
            top:
                -190, // Further increase the negative top value to eliminate gap
            right: -150,
            child: Container(
              width: 620,
              height: 480,
              decoration: BoxDecoration(
                color: Colors
                    .blueAccent, // Match container color with the background
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              // Optional: Add an image inside the container
              // child: ClipOval(
              //   child: Image.asset(
              //     'assets/Logo 2.png', // Replace with your image asset path
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
