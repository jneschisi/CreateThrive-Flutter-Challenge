import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  const FilterButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.onPressed,
      this.minWidth = 95.0,
      this.minHeight = 35.0})
      : super(key: key);

  final Function() onPressed;
  final String text;
  final Color color;
  final double minWidth;
  final double minHeight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 12)),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
      ).copyWith(
        backgroundColor: MaterialStateProperty.all<Color>(color),
        minimumSize: MaterialStateProperty.all(Size(minWidth, minHeight)),
      ),
    );
  }
}
