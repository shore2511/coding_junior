import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Mathematics Course',
      'date': '19 Nov, 2023',
      'completed': 20,
      'hoursSpent': 455,
    },
    // Add more courses here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200.0,
        enableInfiniteScroll: false, // Disable infinite scroll
        autoPlay: false, // Disable autoplay
        enlargeCenterPage: true, // Optionally make the current item larger
        scrollPhysics: NeverScrollableScrollPhysics(), // Disable user scrolling
        viewportFraction: 1.0, // Display only one item at a time
      ),
      items: courses.map((course) {
        return Builder(
          builder: (BuildContext context) {
            return CourseCard(course: course);
          },
        );
      }).toList(),
    );
  }
}

class CourseCard extends StatelessWidget {
  final Map<String, dynamic> course;

  CourseCard({required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(135, 214, 71, 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    course['title'],
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(135, 214, 71, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.calendar_today, size: 16),
                          SizedBox(width: 5),
                          Text(course['date']),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70, // Set the background color to green
                        shape: BoxShape.circle, // Makes the background a circle
                      ),
                      padding: const EdgeInsets.all(8), // Add padding to make the icon appear centered
                      child: const Icon(
                        Icons.check_circle_outline,
                        color: Colors.lightGreen, // Set the icon color to white
                        size: 24, // You can adjust the icon size if needed
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text('Completed'),
                        Text(
                          '${course['completed']}',
                          style: (const TextStyle(fontWeight: FontWeight.w600)),
                        ),
                      ],
                    )
                  ],
                ),
                //line
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white70, // Set the background color to green
                        shape: BoxShape.circle, // Makes the background a circle
                      ),
                      padding: const EdgeInsets.all(8), // Add padding to make the icon appear centered
                      child: const Icon(
                        Icons.access_time,
                        color: Colors.lightGreen, // Set the icon color to white
                        size: 24, // You can adjust the icon size if needed
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text('Hours Spent'),
                        Text(
                          '${course['hoursSpent']}',
                          style: (const TextStyle(fontWeight: FontWeight.w600)),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
