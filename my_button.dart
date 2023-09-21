import 'package:flutter/material.dart';

import '../utils/app_layout.dart';


class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(25)),
        margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20)),
        decoration: BoxDecoration(
            color: Colors.black,
        borderRadius: BorderRadius.circular(20)),
       child: const Center(child: Text('Sign In', style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
       )),
      )),
    );
  }
}
