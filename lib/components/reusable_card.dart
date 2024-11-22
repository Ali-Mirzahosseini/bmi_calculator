import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color, this.childCard, this.functionIfPressed});

  final Color color;
  final Widget? childCard;
  final VoidCallback? functionIfPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: functionIfPressed,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: childCard,
      ),
    );
  }
}
