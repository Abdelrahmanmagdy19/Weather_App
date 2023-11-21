import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.text,
    required this.onPress,
    required this.color,
    required this.textColor,
    required this.width,
    required this.mainAxisalignment,
    this.image,
  });

  final String text;
  final VoidCallback onPress;
  final Color color;
  final Color textColor;
  final double width;
  final MainAxisAlignment mainAxisalignment;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        fixedSize: Size(width, 50),
      ),
      child: Row(
        mainAxisAlignment: mainAxisalignment,
        children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: textColor),
          ),
          if (image != null)
            SizedBox(
              height: 40,
              child: Image.asset(image!),
            )
        ],
      ),
    );
  }
}
