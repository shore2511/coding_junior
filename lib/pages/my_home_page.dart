import 'package:coding_junior/widgets/carousel_page.dart';
import 'package:coding_junior/widgets/header.dart';
import 'package:flutter/material.dart';

import '../widgets/course_card_horizental.dart';
import '../widgets/course_card_vertical.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2f2f2),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home_filled) ,label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.access_alarm) ,label: ""),
          BottomNavigationBarItem(icon:Icon(Icons.account_box) ,label: "",),
          BottomNavigationBarItem(icon:Icon(Icons.mail) ,label: "",),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 20,),
            CarouselPage(),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Course',style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('View All')
                ],
              ),
            ),
            const SizedBox(height: 5,),
            CourseCardHorizental(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular Course',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),),
                  Text('View All')
                ],
              ),
            ),
            const SizedBox(height: 5,),
            CourseCardVertical(),

          ],
        ),
      ),
    );
  }
}