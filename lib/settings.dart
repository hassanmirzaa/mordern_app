import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the3d_objects/PageView/page1.dart';
import 'package:the3d_objects/PageView/page2.dart';
import 'package:the3d_objects/PageView/page3.dart';
import 'package:the3d_objects/PageView/page4.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PageView(
                  controller: _controller,
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                    Page4()
                    
                  ],
                ),
              ),
            ),

            SmoothPageIndicator(
              controller: _controller,
               count: 4,
               effect: JumpingDotEffect(
                dotColor: Colors.deepPurple.shade100,
                activeDotColor: Colors.deepPurple,
                spacing: 16,
              //  verticalOffset: 20,
                jumpScale: 2
               ),
               )

          ],
        ),
      ),
    );
  }
}