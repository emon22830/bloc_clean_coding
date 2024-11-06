
import 'package:bloc_clean_coding/config/routes/routes_name.dart';
import 'package:bloc_clean_coding/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: TextButton(
    onPressed: (){
      Navigator.pushNamed(context, RoutesName.homeScreen);
      // Navigator.push(context, MaterialPageRoute(builder: (context) =>HomeScreen()));
    },
    child: Text('Home'),
  ),
),
    );
  }
}
