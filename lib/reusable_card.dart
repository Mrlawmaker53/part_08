import 'package:flutter/material.dart';
const bottomContainerHeight = 80.0;
const ActiveCardColour = Color(0xFF1D1E33);
const inActiveCardColour=Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);
class ResuableCard extends StatelessWidget {
  // const ResuableCard({
  //   Key? key,
  // }) : super(key: key);
  ResuableCard({required this.colour, required this.cardChild,required this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress(),
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(color: colour,
            borderRadius: BorderRadius.circular(10.0)),

      ),
    );
  }
}
