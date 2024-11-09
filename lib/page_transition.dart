import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the3d_objects/secondpage.dart';

class PageTransitionScreen extends StatelessWidget {
  const PageTransitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Get.to(
              () => const SecondPage(),
              transition: Transition.rightToLeft,
              duration: const Duration(milliseconds: 400),
            );
          },
          color: Colors.deepPurple,
          child: const Text(
            "Page Transition",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
