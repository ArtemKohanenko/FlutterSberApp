import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:flutter_sber/ProfileTab.dart';


class PageBody extends StatelessWidget {
  const PageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'Профиль'),
              Tab(text: 'Настройки')
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: TextColors.primary,
            unselectedLabelColor: TextColors.secondary,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, fontFamily: Fonts.main),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ProfileTab(),
                Center(child: Text('Content for Tab 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
