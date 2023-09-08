import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants/consts.dart';
import 'package:meditation_app/meditation_page.dart';

class CategoryCard extends StatelessWidget {
  final VoidCallback? press;
  final String svgUrl;
  final String cardText;
  const CategoryCard({
    super.key,
    required this.svgUrl,
    required this.cardText,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const MeditationPage();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(svgUrl),
                  const Spacer(),
                  Text(
                    cardText,
                    style: const TextStyle(
                      fontFamily: 'iranSans',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
