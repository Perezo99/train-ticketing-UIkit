import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trainbooking/screens/home/widgets/tickets.dart';
import 'package:trainbooking/utils/app_styles.dart';
import 'package:trainbooking/utils/data.dart';
import 'package:trainbooking/utils/layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: Layout.getHeight(20),
                vertical: Layout.getHeight(20)),
            children: [
              const Gap(40),
              Text(
                'Upcoming',
                style: TextStyles.headline1,
              ),
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
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(50)),
                          color: ColorManager.white,
                        ),
                        child: const Center(
                          child: Text('Upcoming'),
                        ),
                      ),
                      Container(
                        width: width * 0.44,
                        padding: const EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.horizontal(
                              right: Radius.circular(50)),
                          color: ColorManager.primaryColor,
                        ),
                        child: const Center(
                          child: Text('Previous'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(Layout.getHeight(20)),
              Container(
                // padding: EdgeInsets.only(left: Layout.getHeight(15)),
                child: Tickets(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  color: ColorManager.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Perez',
                                  style: TextStyles.headline3
                                      .copyWith(color: ColorManager.black1)),
                              const Gap(5),
                              Text('Passenger',
                                  style: TextStyles.headline3
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('B2023',
                                  style: TextStyles.headline3
                                      .copyWith(color: ColorManager.black1)),
                              const Gap(5),
                              Text('Pass Code',
                                  style: TextStyles.headline3
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  color: ColorManager.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('007',
                                  style: TextStyles.headline3
                                      .copyWith(color: ColorManager.black1)),
                              const Gap(5),
                              Text('E-ticket',
                                  style: TextStyles.headline3
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('MAC2023',
                                  style: TextStyles.headline3
                                      .copyWith(color: ColorManager.black1)),
                              const Gap(5),
                              Text('Booking Code',
                                  style: TextStyles.headline3
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  color: ColorManager.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/mastercard.png',
                                    scale: 30,
                                  ),
                                  Text(
                                    ' ****8574',
                                    style: TextStyles.headline3
                                        .copyWith(color: ColorManager.black1),
                                  ),
                                ],
                              ),
                              const Gap(5),
                              Text('Payment Method',
                                  style: TextStyles.headline3
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('₦5000',
                                  style: TextStyles.headline3
                                      .copyWith(color: ColorManager.black1)),
                              const Gap(5),
                              Text('Price',
                                  style: TextStyles.headline3
                                      .copyWith(fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(Layout.getHeight(15)),
                        bottomRight: Radius.circular(Layout.getHeight(15))),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: Layout.getHeight(10),
                      vertical: Layout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Layout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code39(),
                      data: '',
                      drawText: false,
                      color: ColorManager.black,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              const Gap(20),
              Container(
                child: Tickets(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: Layout.getHeight(12),
            top: Layout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(Layout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorManager.black,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: ColorManager.black,
              ),
            ),
          ),
          
          
          Positioned(
            right: Layout.getHeight(26),
            top: Layout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(Layout.getHeight(3)),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorManager.black,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: ColorManager.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
