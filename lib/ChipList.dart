import 'package:flutter/material.dart';
import 'package:flutter_sber/ChipSelectable.dart';
import 'package:flutter_sber/Palette.dart';
import 'package:collection/collection.dart';


class ChipList extends StatefulWidget {
  @override
  _ChipListState createState() => _ChipListState();
}


class _ChipListState extends State<ChipList> {

  final List<String> interests = ['Еда', 'Саморазвитие', 'Технологии', 'Дом', 'Досуг', 'Забота о себе', 'Наука'];
  late List<bool> boolArray;

  @override
  void initState() {
    super.initState();
    boolArray = List.filled(interests.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: interests.mapIndexed((index, interest) {
        return ChipSelectable(
          label: interest,
          isSelected: boolArray[index],
          onSelected: (bool selected) {
            setState(() {
              boolArray[index] = selected;
            });
          });
      }).toList(),
    );
  }
}
