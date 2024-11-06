import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
      Scaffold(
        backgroundColor: Colors.deepPurple[300],
        body: Center(
          child: MaterialButton(onPressed: (){
            if(isPlaying){
              _controller.stop();
            }else{
              _controller.play();
                }
            isPlaying = !isPlaying;
          },
          color: Colors.deepPurple,
          child: const Text("Party Time",style: TextStyle(color: Colors.white,fontSize: 18),),
          ),
        ),
      ),
      ConfettiWidget(
        confettiController: _controller,
        blastDirection: pi / 2,
        colors: const [
          Colors.deepPurple,
          Colors.yellow,
        ],
        gravity: 0.01,
        emissionFrequency: 0.1,
        )
    ]);
  }
}
