import 'package:flutter/material.dart';
import 'main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.cardChild, this.onPressed});

  final Widget? cardChild;
  final Color colour;
  final Function? onPressed;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed?.call();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}