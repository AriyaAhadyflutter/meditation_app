import 'package:flutter/material.dart';
import 'package:meditation_app/constants/consts.dart';

class BuildSession extends StatelessWidget {
  final String cardnum;
  final bool isWached;
  final VoidCallback? press;
  const BuildSession({
    super.key,
    required this.cardnum,
    this.isWached = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13.0),
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13.0),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0.0, 17.0),
                  blurRadius: 23.0,
                  spreadRadius: -13.0,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        cardnum,
                        style: const TextStyle(
                          fontFamily: 'yagut',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 42.0,
                        width: 42.0,
                        decoration: BoxDecoration(
                          color: isWached ? kBlueColor : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(color: kBlueColor),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isWached ? Colors.white : kBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
