import 'package:alisons_task/api/api_key.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: 40, // Adjust height to fit your app bar design
        child: Image.asset(
          'assets/Logo 2.png',
          fit: BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              Icon(Icons.error), // Handles any errors in loading
        ),
      ),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.favorite_outline_rounded),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.card_travel_sharp),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(60.0); // Standard app bar height
}
