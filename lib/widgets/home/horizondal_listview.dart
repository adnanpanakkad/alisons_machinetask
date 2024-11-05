import 'package:flutter/material.dart';

class HorizondalListview extends StatelessWidget {
  final String title;
  final String imageUrls;

  const HorizondalListview({
    super.key,
    required this.title,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                width: 120,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15), // Rounded edges
                ),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(15), // Match the Container's radius
                  child: Image.network(
                    imageUrls,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.error),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
