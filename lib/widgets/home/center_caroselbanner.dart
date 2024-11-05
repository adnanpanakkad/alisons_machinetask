import 'package:flutter/material.dart';

class CenterCaroselbanner extends StatelessWidget {
  const CenterCaroselbanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Container(
        color: Colors.red,
        height: 350,
      ),
    );
  }
}
