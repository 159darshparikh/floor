import 'package:flutter/material.dart';

import 'package:grocery/presentation/screens/location/location_screen.dart';
import 'package:grocery/presentation/widgets/login/login_widget.dart';

class LoginContainer extends StatefulWidget {
  const LoginContainer({super.key});

  @override
  State<LoginContainer> createState() => _LoginContainerState();
}

class _LoginContainerState extends State<LoginContainer> {



  void tapOnContinue() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const LocationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LoginWidget(
          tapOnContinue: tapOnContinue,
        ),
      ),
    );
  }
}
