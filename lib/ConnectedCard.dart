import 'package:flutter/material.dart';
import 'package:flutter_sber/ConnectedList.dart';

import 'Palette.dart';

class ConnectedCard extends StatelessWidget {
  final ConnectedObject connectedObject;

  ConnectedCard({
    required this.connectedObject
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.headerBg,
      elevation: 8,
      child: SizedBox(
        width: 216,
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(  
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image(
                      image: AssetImage(connectedObject.imageName),
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover
                    )
                  ),
                  const SizedBox(width: 12),
                  Text(
                    connectedObject.name,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: TextColors.primary, fontFamily: Fonts.main)
                    )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    connectedObject.paymentInfo,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: TextColors.primary, fontFamily: Fonts.main)
                  ),
                  SizedBox(height: 2),
                  Text(
                    connectedObject.price.toString() + ' ₽ в месяц',
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: TextColors.secondary, fontFamily: Fonts.main)
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}
