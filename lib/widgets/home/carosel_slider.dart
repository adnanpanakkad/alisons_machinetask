import 'package:flutter/material.dart';

class HorizontalScrollableList extends StatefulWidget {
  final List<String> imageUrls;

  const HorizontalScrollableList({Key? key, required this.imageUrls})
      : super(key: key);

  @override
  _HorizontalScrollableListState createState() =>
      _HorizontalScrollableListState();
}

class _HorizontalScrollableListState extends State<HorizontalScrollableList> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // PageView for horizontal scrolling
        SizedBox(
          height: 450,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                child: Image.network(
                  widget.imageUrls[index],
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
              );
            },
          ),
        ),
        // Page indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageUrls.map((url) {
            int index = widget.imageUrls.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index ? Colors.red : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
