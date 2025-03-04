import 'package:flutter/material.dart';
import 'package:rounds/helpers/constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Button({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
            backgroundColor:
                WidgetStateProperty.all(Theme.of(context).primaryColor)),
        onPressed: onPressed,
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)));
  }
}
