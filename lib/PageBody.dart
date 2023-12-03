import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';


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
          ),
          Expanded(
            child: TabBarView(
              children: [
                Center(child: Text('Content for Tab 1')),
                Center(child: Text('Content for Tab 2')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
