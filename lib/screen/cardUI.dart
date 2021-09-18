import 'package:flutter/material.dart';

class reuseablecard extends StatelessWidget {
  const reuseablecard({
    Key? key,
    required this.colour,
    this.cardchild,
  }) : super(key: key);

  @override
  final Color colour;
  final Widget? cardchild;
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: cardchild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
    );
  }
}
