import 'package:flutter/material.dart';
import 'package:ticket_booking/constants/app_styles.dart';

import 'views/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primaryColor: primary),
      debugShowCheckedModeBanner: false,
      home: const Wrapper(),
    );
  }
}
