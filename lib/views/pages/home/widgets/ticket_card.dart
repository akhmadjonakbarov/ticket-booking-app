import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/constants/app_layout.dart';
import 'package:ticket_booking/constants/app_styles.dart';

class TicketCard extends StatelessWidget {
  const TicketCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context: context);
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(
          left: 16,
        ),
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle17
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      _thickerContainer(),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Flex(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => const SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _thickerContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "LDN",
                        style: Styles.headLineStyle17
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "New York",
                          style: Styles.headLineStyle14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "8H 30M",
                        style: Styles.headLineStyle17.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          "London",
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle14.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(color: Styles.orangeColor),
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(
                            10,
                          ),
                          bottomRight: Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        direction: Axis.horizontal,
                        children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => const SizedBox(
                            height: 1,
                            width: 5,
                            child: DecoratedBox(
                              decoration: BoxDecoration(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            10,
                          ),
                          bottomLeft: Radius.circular(
                            10,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                top: 10,
                left: 16,
                right: 16,
                bottom: 16,
              ),
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(
                    21,
                  ),
                  bottomRight: Radius.circular(
                    21,
                  ),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1 MAY",
                            style: Styles.headLineStyle17.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            'Date',
                            style: Styles.headLineStyle14
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "08:00 AM",
                            style: Styles.headLineStyle17.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle14
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "23",
                            style: Styles.headLineStyle17.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(5),
                          Text(
                            'Number',
                            style: Styles.headLineStyle14
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _thickerContainer() {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        border: Border.all(width: 2.5, color: Colors.white),
      ),
    );
  }
}
