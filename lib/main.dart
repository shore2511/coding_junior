import 'package:coding_junior/pages/course_details.dart';
import 'package:coding_junior/pages/my_home_page.dart';
import 'package:coding_junior/pages/payment_success.dart';
import 'package:coding_junior/widgets/course_card_horizental.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      // home:PaymentSuccess(),
      home: CourseDetails(),

    );
  }
}
