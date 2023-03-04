import 'package:flutter/material.dart';
import 'package:grocery/presentation/screens/profile/profile_screen.dart';
import 'package:grocery/presentation/widgets/home/home_widget.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  void tapOnProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: HomeWidget(
          tapOnProfile: tapOnProfile,
        ),
      ),
    );
  }
}
