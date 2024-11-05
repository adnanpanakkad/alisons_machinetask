import 'package:alisons_task/api/api_key.dart';
import 'package:alisons_task/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const HomeAppbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //   Banner section
              Container(
                margin: const EdgeInsets.all(8.0),
                height: 180,
                color: Colors.grey[300], // Placeholder for banner image
                child: Image.network(
                  width: double.infinity,
                  ApiKey.bannerImg,
                  fit: BoxFit.fill,
                  errorBuilder: (context, error, stackTrace) =>
                      Icon(Icons.error), // Handles any errors in loading
                ),
              ),

              // Suggested items section
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
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      color: Colors.grey[200],
                      child: Center(child: Text("Item ${index + 1}")),
                    );
                  },
                ),
              ),

              // Categories section
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Suggested for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      color: Colors.grey[200],
                      child: Center(child: Text("Item ${index + 1}")),
                    );
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
