import 'package:flutter/material.dart';

class HorizondalListview extends StatelessWidget {
  final String title;
  final String imageUrls;
  final double heights;
  final double widths;
  const HorizondalListview({
    super.key,
    required this.title,
    required this.imageUrls,
    required this.heights,
    required this.widths,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
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
            height: heights,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: widths,
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15), 
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        15), 
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
      ),
    );
  }
}
