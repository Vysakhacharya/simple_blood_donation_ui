import 'package:flutter/material.dart';
import 'package:simple_blood_donation/pages/booking_page.dart';
import 'package:simple_blood_donation/pages/login_page.dart';
import 'package:simple_blood_donation/pages/splash_screen.dart';
import 'package:simple_blood_donation/pages/survay_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/booking':(context) => Booking(),
        '/survey': (context) => Survey(),
      },
    );
  }
}
