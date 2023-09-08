import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/widgets/category.dart';
import 'package:meditation_app/widgets/navbar.dart';
import 'package:meditation_app/widgets/searchbar.dart';
import 'constants/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Yekanplus',
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
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
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.center,
                image: AssetImage(
                  'assets/images/undraw_pilates_gpdb.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'برای مدیتیشن آماده ای ؟',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const BuildSearch(),
                  Expanded(
                    child: GridView.count(
                        childAspectRatio: 0.85,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: const [
                          CategoryCard(
                            svgUrl: 'assets/icons/Hamburger.svg',
                            cardText: 'رژیم پیشنهادی',
                          ),
                          CategoryCard(
                            svgUrl: 'assets/icons/Excrecises.svg',
                            cardText: 'نرمش',
                          ),
                          CategoryCard(
                            svgUrl: 'assets/icons/Meditation.svg',
                            cardText: 'مدیتیشن',
                          ),
                          CategoryCard(
                            svgUrl: 'assets/icons/yoga.svg',
                            cardText: "یوگا",
                          ),
                        ]),
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
