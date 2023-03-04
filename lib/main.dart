import 'package:flutter/material.dart';
import 'package:trainbooking/screens/widgets/bottom_bar.dart';
import 'package:trainbooking/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: ColorManager.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomBar(),
    );
  }
}
