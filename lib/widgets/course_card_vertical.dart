import 'package:flutter/material.dart';
import 'overlap_icon.dart';

class CourseCardVertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // Adjust the height to suit the card content
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 20, // Number of cards
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 3.0), // Fixed width for each card
            child: Card(
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 50, // Set the width to create a square shape
                      height: 50, // Set the height to match the width
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle, // Ensures the image is square
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0), // Optional for rounded corners
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRb5IBOVPI_RWPxLzGgV6w5mk7jCK9m2g-cFQ&s',
                          fit: BoxFit.cover, // Ensures the image fits the container
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Photoshop Editing',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber, size: 16),
                                Text('4.8', style: TextStyle(fontSize: 14)),
                                SizedBox(width: 8.0),
                                Text('(230)', style: TextStyle(fontSize: 12)),
                              ],
                            ),
                            SizedBox(width: 20),
                            Row(
                              children: [
                                Icon(Icons.video_library,
                                    color: Colors.grey, size: 16),
                                Text('30 Lessons', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
