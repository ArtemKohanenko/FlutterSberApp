import 'package:flutter/material.dart';
import 'package:flutter_sber/Palette.dart';

class ChipSelectable extends StatefulWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool> onSelected;

  const ChipSelectable({
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  _ChipSelectableState createState() => _ChipSelectableState();
}

class _ChipSelectableState extends State<ChipSelectable> {
  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Text(
        widget.label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: widget.isSelected ? TextColors.tertiary : TextColors.primary,
          fontFamily: Fonts.main
          )
      ),
      selected: widget.isSelected,
      onSelected: widget.onSelected,
      showCheckmark: false,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      backgroundColor: AppColors.chipBg,
      selectedColor: AppColors.icons,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: AppColors.chipBg)
      ),
      padding: const EdgeInsets.symmetric(horizontal: -8 + 12, vertical: -8),
    );
  }
}
