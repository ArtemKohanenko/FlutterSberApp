import 'package:flutter/material.dart';
import 'package:flutter_sber/ChipList.dart';
import 'package:flutter_sber/ConnectedList.dart';
import 'package:flutter_sber/OperationList.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:flutter_sber/TitleAndSubtitle.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bodyBg,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const TitleAndSubtitle(
                  title: 'У вас подключено',
                  subtitle: 'Подписки, автоплатежи и сервисы на которые вы подписались'
                ),
                const SizedBox(height: 20),
                ConnectedList(),
                const SizedBox(height: 46),
                const TitleAndSubtitle(
                  title: 'Тарифы и лимиты',
                  subtitle: 'Для операций в Сбербанк Онлайн'
                ),
              ]
            ),
          ),
          const SizedBox(height: 12),
          OperationList(),
          const SizedBox(height: 46),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleAndSubtitle(
                  title: 'Интересы',
                  subtitle: 'Мы подбираем истории и предложения по темам, которые вам нравятся'
                ),
                const SizedBox(height: 16),
                ChipList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

