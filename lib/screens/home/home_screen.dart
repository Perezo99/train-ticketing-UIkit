import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:trainbooking/screens/home/widgets/hotels_screen.dart';
import 'package:trainbooking/screens/home/widgets/tickets.dart';
import 'package:trainbooking/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:trainbooking/utils/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello Perez', style: TextStyles.headline3),
                        const Gap(5),
                        Text('Book Ticket', style: TextStyles.headline1),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logo.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorManager.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: ColorManager.textColor,
                      ),
                      Gap(5),
                      Text("Search...", style: TextStyles.headline4),
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming trains', style: TextStyles.headline2),
                    InkWell(
                      onTap: () {},
                      child: Text('View all',
                          style: TextStyles.textStyle
                              .copyWith(color: ColorManager.black1)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList
                    .map((ticket) => Tickets(ticket: ticket))
                    .toList(),
              )),
          const Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: TextStyles.headline2),
                InkWell(
                  onTap: () {},
                  child: Text('View all',
                      style: TextStyles.textStyle
                          .copyWith(color: ColorManager.black1)),
                ),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                  children: hotelList
                      .map((hotel) => HotelsScreen(hotel: hotel))
                      .toList())),
        ],
      ),
    );
  }
}
