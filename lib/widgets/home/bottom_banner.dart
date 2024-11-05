import 'package:alisons_task/api/api_key.dart';
import 'package:flutter/material.dart';

class BottomBanner extends StatelessWidget {
  const BottomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(15), // Adjust the radius as needed
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              15), // Ensures the image also has rounded corners
          child: Image.network(ApiKey.bannerImg),
        ),
      ),
    );
  }
}