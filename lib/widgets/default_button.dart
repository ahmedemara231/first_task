import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  const DefaultButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            side: const BorderSide(
              color: Colors.teal,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            )),
        child: Text(title),
      ),
    );
  }
}

