import 'package:flutter/material.dart';

class ButtonComponents extends StatelessWidget {
  final Color color;
  final String text;
  final VoidCallback onTap;
  const ButtonComponents(
      {super.key,
      this.color = const Color(0xffa5a5a5),
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                text,
                style: const  TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
