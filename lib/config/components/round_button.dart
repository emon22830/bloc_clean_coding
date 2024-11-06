import 'package:flutter/material.dart';

import '../color/app_colors.dart';

class RoundButton extends StatefulWidget {
  final String title;
  final VoidCallback onPress;
  final double height;
  const RoundButton({super.key,this.height = 40, required this.title, required this.onPress});

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(color: AppColors.buttonColor,borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(widget.title),
        ),
      ),
    );
  }
}
