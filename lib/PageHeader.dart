import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 50,
            height: 40,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                fixedSize: const Size(40, 40)
              ),
              onPressed: () {},
              child:
                const Icon(
                Icons.close,
                color: AppColors.icons,
                size: 24.0,
              )
            ),
          ),
          Column(
            children: [
              SizedBox(height: 6),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 38,
                      offset: const Offset(0, 20),
                    ),
                  ],
                ),
                child: const Image(
                  image: AssetImage('assets/images/Photo.png'),
                  width: 110,
                  height: 110,
                ),
              ),
              const SizedBox(height: 36),
              const Text("Екатерина",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700))
            ],
          ),
          SizedBox(
            width: 50,
            height: 40,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent
              ),
              onPressed: () {},
              child:
                SvgPicture.asset('assets/icons/ic_24_arrow_right_square.svg')
            ),
          ),
        ]
      ),
    );
  }
}
