import 'package:flutter/material.dart';
import 'package:trainbooking/utils/app_styles.dart';

class CircularContainer extends StatelessWidget {
  final bool? iscolor;
  const CircularContainer({super.key, this.iscolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            width: 2.5,
            color: iscolor == null ? ColorManager.white : ColorManager.black1),
      ),
    );
  }
}
