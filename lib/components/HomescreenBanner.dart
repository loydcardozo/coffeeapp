import 'package:flutter/material.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(153, 236, 232, 232),
        // color: Color.fromARGB(255, 52, 73, 85),
        borderRadius: BorderRadius.circular(20),
      ),

    );
  }
}
