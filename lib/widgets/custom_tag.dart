import 'package:flutter/material.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({Key? key,
    required this.backgroundColor,
    required this.children,
  }) : super(key: key);

  final Color backgroundColor;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: children,
      )
    );
  }
}