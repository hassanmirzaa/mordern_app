import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:the3d_objects/menu_items.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showPopover(
        context: context,
        bodyBuilder: (context) => MenuItems(),
        height: 150,width: 250,
        backgroundColor: Colors.deepPurple,
      //direction: PopoverDirection.top
      ),
      
      child: Icon(Icons.more_vert),
    );
  }
}