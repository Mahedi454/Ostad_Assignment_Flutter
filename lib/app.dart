import 'package:assignment_ostad/screens/profile_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5F6F8),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F6EDC),
          brightness: Brightness.light,
        ),
        fontFamily: 'Roboto',
      ),
      home: const ProfilePage(),
    );
  }
}
