// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 60,
      child: Center(child: Text(text, style: TextStyle(fontSize: 17))),
    );
  }
}
