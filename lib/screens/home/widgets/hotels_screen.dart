import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trainbooking/utils/app_styles.dart';
import 'package:trainbooking/utils/layout.dart';

class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelsScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: ColorManager.black2,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: ColorManager.black1,
            blurRadius: 2,
            spreadRadius: 0.5,
          ),
        ],
      ),
      width: width * 0.6,
      height: Layout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          
            height: Layout.getHeight(180),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorManager.black2,
                image: DecorationImage(
                  image: AssetImage("assets/images/${hotel['image']}"),
                  fit: BoxFit.cover,
                )),
          ),
          Gap(10),
          Text(
            hotel['place'],
            style:
                TextStyles.headline2.copyWith(color: ColorManager.primaryColor),
          ),
          Gap(5),
          Text(
            hotel['destination'],
            style:
                TextStyles.headline3.copyWith(color: ColorManager.primaryColor),
          ),
          Gap(5),
          Text(
            '\$${hotel['price']}/night',
            style: TextStyles.headline3.copyWith(color: ColorManager.black),
          ),
        ],
      ),
    );
  }
}
