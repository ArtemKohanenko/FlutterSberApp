import 'package:flutter/material.dart';
import 'package:flutter_sber/OperationRow.dart';

class OperationObject {
  final String title;
  final String? subtitle;
  final String imageName;

  OperationObject({required this.title, required this.imageName, this.subtitle});
}

class OperationList extends StatelessWidget {
  OperationList({
    super.key
  });

  final List<OperationObject> operationList = [
    OperationObject(
      title: 'Изменить суточный лимит',
      subtitle: 'На платежи и переводы',
      imageName: 'assets/icons/ic_36_speedometer.svg'
    ),
    OperationObject(
      title: 'Переводы без комиссии',
      subtitle: 'Показать остаток в этом месяце',
      imageName: 'assets/icons/ic_36_percent.svg'
    ),
    OperationObject(
      title: 'Информация о тарифах и лимитах',
      subtitle: null,
      imageName: 'assets/icons/ic_36_arrows_forward_back.svg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(), 
        itemCount: operationList.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(left: 48, bottom: 0, top: 0),
            child: Divider(
              thickness: 1,
              indent: 0,
              endIndent: 0
            ),
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return OperationRow(operationObject: operationList[index]);
        },
      ),
    );
  }
}
