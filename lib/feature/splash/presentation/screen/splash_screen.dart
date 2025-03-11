import 'package:flutter/material.dart';
import '../../../../core/theme/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
              top: height * 0.2,
              left: width * 0.2,
              right: width * 0.2,
              child: Text("Welcome to ZANIS",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold , color: AppColor.backSplash))),
          Positioned(
              top: height * 0.25,
              left: width * 0.08,
              right: width * 0.08,
              child: Text("Innovative Solutions for a Better Tomorrow",
                  style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.normal ,  color: AppColor.darkBlueColor))),
          Positioned(
            bottom: height * 0.05,
            left: width * 0.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CircularProgressIndicator(
                color: AppColor.backSplash,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
