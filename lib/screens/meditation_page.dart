import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants/consts.dart';
import 'package:meditation_app/screens/video_player.dart';
import 'package:meditation_app/widgets/navbar.dart';
import 'package:meditation_app/widgets/searchbar.dart';
import 'package:meditation_app/widgets/videocards.dart';

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
              child: SingleChildScrollView(
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
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        BuildSession(
                          cardnum: 'ویدیو شماره 1',
                          isWached: true,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyVideoPlayer(),
                              ),
                            );
                          },
                        ),
                        const BuildSession(cardnum: 'ویدیو شماره 2'),
                        const BuildSession(cardnum: 'ویدیو شماره 3'),
                        const BuildSession(cardnum: 'ویدیو شماره 4'),
                        const BuildSession(cardnum: 'ویدیو شماره 5'),
                        const BuildSession(cardnum: 'ویدیو شماره 6'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'پیشنهاد ما',
                        style: TextStyle(
                          fontFamily: 'Vazir',
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'یوگا پیشرفته',
                                  style: TextStyle(
                                    fontFamily: 'Vazir',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'پیشرفته تر از قبل تمرین کنید',
                                  style: TextStyle(
                                    fontFamily: 'Vazir',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BuildNavBar(),
    );
  }
}
