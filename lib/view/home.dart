import 'package:alisons_task/api/api_key.dart';
import 'package:alisons_task/widgets/home/bottom_banner.dart';
import 'package:alisons_task/widgets/home/carosel_slider.dart';
import 'package:alisons_task/widgets/home/center_caroselbanner.dart';
import 'package:alisons_task/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const HomeAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner section
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 180,
                child: Image.network(
                  ApiKey.bannerImg,
                  width: double.infinity,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
              ),

              // Our Brands section
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Our Brands",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      color: Colors.grey[200],
                      child: Image.network(
                        ApiKey.productimg,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error),
                      ),
                    );
                  },
                ),
              ),

              // Suggested for you section
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Suggested for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      color: Colors.grey[200],
                      child: Image.network(
                        ApiKey.productimg,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error),
                      ),
                    );
                  },
                ),
              ),

              const CenterCaroselbanner(),
              // New Container section with two horizontal ListView.builder widgets inside
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Best seller",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          color: Colors.grey[200],
                          child: Image.network(
                            ApiKey.productimg,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.error),
                          ),
                        );
                      },
                    ),
                  ),

                  // Trending Categories section
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Trending Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          color: Colors.grey[200],
                          child: Image.network(
                            ApiKey.productimg,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.error),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 15),
                  const BottomBanner(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
