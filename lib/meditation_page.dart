import 'package:flutter/material.dart';
import 'package:meditation_app/constants/consts.dart';
import 'package:meditation_app/widgets/searchbar.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: size.height * 0.02),
                  const Text(
                    'مدیتیشن',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Lalezar',
                      fontSize: 33,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    '٢٠ دقیقه آموزش',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontFamily: 'lalezar',
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const Text(
                    'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را \nمیتوانید خیلی افزایش دهید و عمر طولانی‌تری\n داشته باشید',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontFamily: 'YekanBakh',
                      fontSize: 15.0,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: size.width * 0.4,
                      height: 100,
                      child: const BuildSearch(),
                    ),
                  ),
                  const Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      BuildSession(cardnum: 'ویدیو شماره 1', isWached: true),
                      BuildSession(cardnum: 'ویدیو شماره 2'),
                      BuildSession(cardnum: 'ویدیو شماره 3'),
                      BuildSession(cardnum: 'ویدیو شماره 4'),
                      BuildSession(cardnum: 'ویدیو شماره 5'),
                      BuildSession(cardnum: 'ویدیو شماره 6'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
                          fontWeight: FontWeight.w500,
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
