import 'package:flutter/material.dart';
import 'package:tase/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    homescreen();
    animationController =
        new AnimationController(vsync: this, duration: Duration(seconds: 1));
    animationController.forward();
  }

  homescreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, Routes.Introduction);
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "asset/image/burger5.png",
              height: 160,
              width: 160,
            ),
            SizeTransition(
              sizeFactor: new CurvedAnimation(
                parent: animationController,
                curve: Curves.fastOutSlowIn,
              ),
              axis: Axis.vertical,
              child: Container(
                height: 150.0,
              ),
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
