import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants/consts.dart';

class BuildNav extends StatelessWidget {
  final String svgUrl;
  final String navBarTitle;
  final VoidCallback? press;
  final bool isActive;
  const BuildNav({
    super.key,
    required this.svgUrl,
    required this.navBarTitle,
    required this.isActive,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(svgUrl),
        Text(
          navBarTitle,
          style: TextStyle(
            color: isActive ? kActiveIconColor : kTextColor,
            fontFamily: 'yagut',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
