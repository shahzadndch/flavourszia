import 'package:flutter/cupertino.dart';

import '../utils/Dimensions.dart';

class AppIcon extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  AppIcon({Key? key,
    this.size=40,
    this.backgroundColor= const Color(0xfffcf4e4),
    required this.icon,
    this.iconSize=16,
    this.iconColor = const Color(0xff756d54),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.height40,
      width: Dimensions.height40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}
