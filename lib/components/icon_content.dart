import 'package:flutter/cupertino.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: iconSize),
        const SizedBox(
          height: 15.0,
        ),
        Text(text, style: kLabelTextStyle,),
      ],
    );
  }
}