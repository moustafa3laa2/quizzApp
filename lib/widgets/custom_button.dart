import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color borderColor;
  final Color? colorTitle;
  final void Function()? onPressed;

  const CustomButton({
    super.key,
    required this.title,
    required this.color,
    required this.colorTitle,
    this.onPressed,  this.borderColor=Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: borderColor),
        minimumSize: Size(double.infinity, 40),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: colorTitle,
        ),
      ),
    );
  }
}
