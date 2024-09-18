import 'package:flutter/material.dart';

class OverlapIcon extends StatelessWidget {
  final List<String> imageUrls;

  OverlapIcon({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.0, // Adjust the width as needed
      height: 30.0, // Adjust the height as needed
      child: Stack(
        clipBehavior: Clip.none,
        children: List.generate(
          imageUrls.length,
              (index) => Positioned(
            left: index * 10.0, // Adjust the overlap amount
            child: ClipOval(
              child: Image.network(
                imageUrls[index],
                width: 20.0, // Adjust the width as needed
                height: 20.0, // Adjust the height as needed
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
