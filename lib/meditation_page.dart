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
                      BuildSession(cardnum: 'ویدیو شماره 01', isWached: true),
                      BuildSession(cardnum: 'ویدیو شماره 02'),
                      BuildSession(cardnum: 'ویدیو شماره 03'),
                      BuildSession(cardnum: 'ویدیو شماره 04'),
                      BuildSession(cardnum: 'ویدیو شماره 05'),
                      BuildSession(cardnum: 'ویدیو شماره 06'),
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
  const BuildSession({
    super.key,
    required this.cardnum,
    this.isWached = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            width: constraints.maxWidth / 2 - 10,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(13)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: kShadowColor,
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  cardnum,
                  style: const TextStyle(
                    fontFamily: 'iranSans',
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 42,
                  width: 42,
                  decoration: const BoxDecoration(
                      color: kBlueColor, shape: BoxShape.circle),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
