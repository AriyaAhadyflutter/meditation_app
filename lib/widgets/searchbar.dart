import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildSearch extends StatelessWidget {
  const BuildSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
            hintText: '. . .جستجو کنید',
            hintStyle: const TextStyle(fontFamily: 'iranSans', fontSize: 10),
            border: InputBorder.none,
            icon: SvgPicture.asset('assets/icons/search.svg'),),
      ),
    );
  }
}
