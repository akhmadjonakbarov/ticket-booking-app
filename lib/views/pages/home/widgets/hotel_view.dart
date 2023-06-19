import 'package:flutter/material.dart';
import './widgets.dart';

class HotelView extends StatefulWidget {
  const HotelView({super.key});

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) => HotelCard()),
    );
  }
}
