import 'package:flutter/material.dart';
import 'package:ticket_booking/views/pages/home/widgets/ticket_card.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (index) => TicketCard(),
      ),
    );
  }
}
