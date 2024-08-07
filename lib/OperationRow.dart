import 'package:flutter/material.dart';
import 'package:flutter_sber/OperationList.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OperationRow extends StatelessWidget {

  final OperationObject operationObject;

  const OperationRow({
    required this.operationObject
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0)
        ),

      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const SizedBox(width: 16),
                SvgPicture.asset(
                  operationObject.imageName,
                  height: 36,
                  width: 36,
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          operationObject.title,
                          softWrap: true,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TextColors.primary, fontFamily: Fonts.main)
                        ),
                        const SizedBox(height: 2),
                        operationObject.subtitle != null 
                        ? Text(
                          operationObject.subtitle ?? '',
                          softWrap: true,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: TextColors.secondary, fontFamily: Fonts.main)
                        ) 
                        : Container()
                        
                      ],
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: SvgPicture.asset(
                'assets/icons/Disclosure.svg',
                height: 24,
                width: 24,
              ),
            )
          ]
        ),
      )
    );
  }
}
