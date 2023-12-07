import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';


class TitleAndSubtitle extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleAndSubtitle({
    super.key, 
    required this.title,
    required this.subtitle
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: TextColors.primary, fontFamily: Fonts.main)),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: TextColors.secondary, fontFamily: Fonts.main)
          )
        ],
      ),
    );
  }
}
