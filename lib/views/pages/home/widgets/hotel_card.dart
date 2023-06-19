import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../constants/app_layout.dart';
import '../../../../constants/app_styles.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context: context);
    return Container(
        height: 350,
        width: size.width * 0.6,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        margin: const EdgeInsets.only(top: 5, right: 17),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(
            24,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 2,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                    scale: 1,
                  ),
                ),
              ),
            ),
            const Gap(10),
            Text(
              "Open space",
              style: Styles.headLineStyle21.copyWith(
                color: Styles.kakiColor,
              ),
            ),
            Text(
              "London",
              style: Styles.headLineStyle17.copyWith(
                color: Colors.white,
              ),
            ),
            const Gap(8),
            Text(
              '\$80/night',
              style: Styles.headLineStyle26.copyWith(
                color: Styles.kakiColor,
              ),
            )
          ],
        ));
  }
}
