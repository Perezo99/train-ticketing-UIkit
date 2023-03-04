import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:trainbooking/screens/widgets/circular_container.dart';
import 'package:trainbooking/utils/app_styles.dart';
import 'package:trainbooking/utils/layout.dart';

class Tickets extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const Tickets({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width * 0.97,
      height: Layout.getHeight(168),
      child: Container(
        margin: EdgeInsets.only(right: Layout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color:
                    isColor == null ? ColorManager.black : ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Layout.getHeight(21)),
                  topRight: Radius.circular(Layout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(Layout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],
                          style: isColor == null
                              ? TextStyles.headline3
                                  .copyWith(color: ColorManager.primaryColor)
                              : TextStyles.headline3
                                  .copyWith(color: ColorManager.black1)),
                      Expanded(child: Container()),
                      CircularContainer(iscolor: true),
                      Expanded(
                        child: Stack(children: [
                          SizedBox(
                            height: Layout.getHeight(25),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 7)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: isColor == null
                                                      ? ColorManager.white
                                                      : ColorManager.black1),
                                            ),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                              child: Icon(Icons.train,
                                  color: isColor == null
                                      ? ColorManager.white
                                      : ColorManager.black1)),
                        ]),
                      ),
                      CircularContainer(iscolor: true),
                      Expanded(child: Container()),
                      Text(ticket['to']['code'],
                          style: isColor == null
                              ? TextStyles.headline3
                                  .copyWith(color: ColorManager.primaryColor)
                              : TextStyles.headline3
                                  .copyWith(color: ColorManager.black1)),
                    ],
                  ),
                  Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Layout.getWidth(56),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == null
                              ? TextStyles.headline4.copyWith(
                                  color: ColorManager.white, fontSize: 12)
                              : TextStyles.headline4,
                        ),
                      ),
                      Text(
                        ticket['time'],
                        textAlign: TextAlign.center,
                        style: isColor == null
                            ? TextStyles.headline4
                                .copyWith(color: ColorManager.white)
                            : TextStyles.headline4.copyWith(
                                color: ColorManager.black1,
                                fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: Layout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? TextStyles.headline4.copyWith(
                                  color: ColorManager.white, fontSize: 12)
                              : TextStyles.headline4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == null ? ColorManager.green : ColorManager.white,
              child: Row(
                children: [
                  SizedBox(
                    height: Layout.getHeight(20),
                    width: Layout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? ColorManager.primaryColor
                            : ColorManager.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Layout.getHeight(10)),
                          bottomRight: Radius.circular(Layout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(Layout.getHeight(12.0)),
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: isColor == null
                                                ? ColorManager.white
                                                : ColorManager.black1)),
                                  )),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: Layout.getHeight(20),
                    width: Layout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == null
                            ? ColorManager.primaryColor
                            : ColorManager.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Layout.getHeight(10)),
                          bottomLeft: Radius.circular(Layout.getHeight(10)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color:
                    isColor == null ? ColorManager.green : ColorManager.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                        isColor == null ? Layout.getHeight(21) : 0),
                    bottomRight: Radius.circular(
                        isColor == null ? Layout.getHeight(21) : 0)),
              ),
              padding:
                  EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == null
                                ? TextStyles.headline3
                                    .copyWith(color: ColorManager.white)
                                : TextStyles.headline3
                                    .copyWith(color: ColorManager.black1),
                          ),
                          const Gap(5),
                          Text(
                            "DATE",
                            style: isColor == null
                                ? TextStyles.headline4
                                    .copyWith(color: ColorManager.white)
                                : TextStyles.headline4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['dep_time'],
                            style: isColor == null
                                ? TextStyles.headline3
                                    .copyWith(color: ColorManager.white)
                                : TextStyles.headline3
                                    .copyWith(color: ColorManager.black1),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: isColor == null
                                ? TextStyles.headline4
                                    .copyWith(color: ColorManager.white)
                                : TextStyles.headline4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == null
                                ? TextStyles.headline3
                                    .copyWith(color: ColorManager.white)
                                : TextStyles.headline3
                                    .copyWith(color: ColorManager.black1),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor == null
                                ? TextStyles.headline4
                                    .copyWith(color: ColorManager.white)
                                : TextStyles.headline4,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
