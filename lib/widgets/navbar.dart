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


class BuildNavBar extends StatelessWidget {
  const BuildNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildNav(
            svgUrl: 'assets/icons/calendar.svg',
            navBarTitle: 'امروز',
            isActive: false,
          ),
          BuildNav(
            svgUrl: 'assets/icons/gym.svg',
            navBarTitle: 'تمرینات',
            isActive: true,
          ),
          BuildNav(
            svgUrl: 'assets/icons/Settings.svg',
            navBarTitle: 'تنظیمات',
            isActive: false,
          ),
        ],
      ),
    );
  }
}
