import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({ required this.title , required this.colour, required this.onPressed }){}

  Color colour;
  String title;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: TextButton(
          onPressed: onPressed,
          child: Text(title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}