import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.icon, @required this.onTap});
  final VoidCallback onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Icon(
        icon,
        size: 24.0,
      ),
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        elevation: 1.0,
        primary: const Color(0xff005ea6),
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
      ),
    );
  }
}
