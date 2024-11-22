import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, this.icon, this.onPressedFunction});

  final IconData? icon;
  final VoidCallback? onPressedFunction;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressedFunction,
      elevation: 10.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: kRoundIconButtonColor,
      child: Icon(icon),
    );
  }
}