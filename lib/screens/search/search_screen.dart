import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trainbooking/utils/app_styles.dart';
import 'package:trainbooking/utils/layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Layout.getWidth(20), vertical: Layout.getHeight(20)),
        children: [
          const Gap(40),
          Text('What are\nyou looking for?',
              style: TextStyles.headline1.copyWith(fontSize: 35)),
          const Gap(20),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: ColorManager.tab,
              ),
              child: Row(
                children: [
                  Container(
                    width: width * 0.44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(left: Radius.circular(50)),
                      color: ColorManager.white,
                    ),
                    child: Center(
                      child: Text('Train Tickets'),
                    ),
                  ),
                  Container(
                    width: width * 0.44,
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.horizontal(right: Radius.circular(50)),
                      color: ColorManager.primaryColor,
                    ),
                    child: Center(
                      child: Text('Hotels'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Layout.getWidth(12),
                horizontal: Layout.getHeight(12)),
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(Layout.getWidth(10)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.directions_train_outlined,
                  color: ColorManager.black1,
                ),
                Gap(10),
                Text(
                  'Departure',
                  style:
                      TextStyles.textStyle.copyWith(color: ColorManager.black1),
                ),
              ],
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Layout.getWidth(12),
                horizontal: Layout.getHeight(12)),
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(Layout.getWidth(10)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.directions_train_rounded,
                  color: ColorManager.black1,
                ),
                Gap(10),
                Text(
                  'Arrival',
                  style:
                      TextStyles.textStyle.copyWith(color: ColorManager.black1),
                ),
              ],
            ),
          ),
          Gap(15),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Layout.getHeight(15),
                  horizontal: Layout.getWidth(15)),
              decoration: BoxDecoration(
                color: ColorManager.black,
                borderRadius: BorderRadius.circular(Layout.getWidth(10)),
              ),
              child: Center(
                child: Text(
                  'Find Tickets',
                  style:
                      TextStyles.headline4.copyWith(color: ColorManager.white),
                ),
              ),
            ),
          ),
          Gap(40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming trains',
                  style:
                      TextStyles.headline3.copyWith(color: ColorManager.black)),
              InkWell(
                onTap: () {},
                child: Text('View all',
                    style: TextStyles.textStyle
                        .copyWith(color: ColorManager.black1)),
              ),
            ],
          ),
          Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: Layout.getHeight(400),
                width: width * 0.42,
                padding: EdgeInsets.symmetric(
                    vertical: Layout.getHeight(15),
                    horizontal: Layout.getWidth(15)),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(Layout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: ColorManager.black2,
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: Layout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Layout.getHeight(12)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/kd-train.jpg'))),
                    ),
                    Gap(5),
                    Text(
                      '50% discount on March 1st to mark the Reopening of Kaduna train.',
                      style: TextStyles.headline3,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: width * 0.44,
                    height: Layout.getHeight(195),
                    decoration: BoxDecoration(
                      color: ColorManager.blue1,
                      borderRadius: BorderRadius.circular(Layout.getHeight(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: Layout.getHeight(15),
                        horizontal: Layout.getWidth(15)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Discount\nfor survey',
                            style: TextStyles.headline2.copyWith(
                                color: ColorManager.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(10),
                          Text(
                            'Please take the survey about our services and get a discount',
                            style: TextStyles.headline4.copyWith(
                              color: ColorManager.white,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ]),
                  ),
                  Gap(10),
                  Container(
                    width: width * 0.44,
                    height: Layout.getHeight(195),
                    decoration: BoxDecoration(
                      color: ColorManager.red1,
                      borderRadius: BorderRadius.circular(Layout.getHeight(18)),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: Layout.getHeight(45),
                        horizontal: Layout.getWidth(15)),
                    child: Column(children: [
                      Center(
                        child: Text(
                          'Watch out for discounts',
                          style: TextStyles.headline4.copyWith(
                            color: ColorManager.white,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
