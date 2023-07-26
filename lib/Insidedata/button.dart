import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final IconData icon;
  final String text;

  Button({required this.icon, required this.text});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isPressed = false;

  void toggleButtonState() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          IconButton(
            icon: Icon(
              widget.icon,
              size: 40,
              color: isPressed ? Colors.red : Colors.white,
            ),
            onPressed: toggleButtonState,
          ),
          SizedBox(height: 10),
          Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
