import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ConnectedCard.dart';

class ConnectedObject {
  final String imageName;
  final String name;
  final String paymentInfo;
  final int price;

  ConnectedObject({required this.imageName, required this.name, required this.paymentInfo, required this.price});
}

class ConnectedList extends StatelessWidget {
  ConnectedList({
    super.key
  });

  final List<ConnectedObject> connectedList = [
    ConnectedObject(
      imageName: "assets/images/mc_36_sberprime.png",
      name: 'СберПрайм',
      paymentInfo: 'Платёж 9 июля',
      price: 199
    ),
    ConnectedObject(
      imageName: "assets/images/ic_36_percent_fill.png",
      name: 'Переводы',
      paymentInfo: 'Автопродление 21 августа',
      price: 199
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 130,
        width: 3000,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(), 
          itemCount: connectedList.length,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 8);
          },
          itemBuilder: (BuildContext context, int index) {
              return ConnectedCard(connectedObject: connectedList[index]);
          },
        ),
      ),
    );
  }
}
