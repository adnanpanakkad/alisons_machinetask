import 'package:alisons_task/api/api_key.dart';
import 'package:alisons_task/widgets/home/bottom_banner.dart';
import 'package:alisons_task/widgets/home/carosel_slider.dart';
import 'package:alisons_task/widgets/home/horizondal_listview.dart';
import 'package:alisons_task/widgets/home/top_banner.dart';
import 'package:alisons_task/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<String> carouselImages = [
    ApiKey.bannerImg,
    ApiKey.productimg,
    ApiKey.categories,
    ApiKey.productimg,
  ];
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
              const TopBanner(),
              HorizondalListview(
                imageUrls: ApiKey.productimg,
                title: 'Our Brands',
              ),

              // Suggested for you section
              HorizondalListview(
                imageUrls: ApiKey.categories,
                title: 'Suggested for you',
              ),
              const SizedBox(
                height: 10,
              ),
              // CenterCaroselbanner,
              HorizontalScrollableList(imageUrls: carouselImages),

              // New Container section with two horizontal ListView.builder widgets inside
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HorizondalListview(
                    imageUrls: ApiKey.productimg,
                    title: 'Best seller',
                  ),
                  // Trending Categories section
                  HorizondalListview(
                    imageUrls: ApiKey.productimg,
                    title: 'Trending Categories',
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
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
                            borderRadius:
                                BorderRadius.circular(15), 
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                15),
                            child: Image.network(
                              ApiKey.categories,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "shop exclusive Deals",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
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
