import 'package:flutter/material.dart';
import 'package:grocery/presentation/screens/home/home_screen.dart';
import 'package:grocery/presentation/widgets/location/location_widget.dart';

class LocationContaier extends StatefulWidget {
  const LocationContaier({super.key});

  @override
  State<LocationContaier> createState() => _LocationContaierState();
}

class _LocationContaierState extends State<LocationContaier> {
  void tapOnBack() {
    Navigator.pop(context);
  }

  void tapOnConfirm() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LocationWidget(
          tapOnBack: tapOnBack,
          tapOnConfirm: tapOnConfirm,
        ),
      ),
    );
  }
}
