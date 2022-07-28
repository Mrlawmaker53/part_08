import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Constants.dart';

class IconContent extends StatelessWidget {
  // const IconContent({
  //   Key? key,
  // }) : super(key: key);
  IconContent({required this.text,required this.iconData});
  final String text;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(

          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: klabelTextStyle,
          ),

      ],
    );
  }
}
