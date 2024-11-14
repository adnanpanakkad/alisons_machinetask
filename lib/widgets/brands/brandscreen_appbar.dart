import 'package:flutter/material.dart';

class BrandscreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BrandscreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_sharp)),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.favorite_outline_rounded,
            size: 30,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
