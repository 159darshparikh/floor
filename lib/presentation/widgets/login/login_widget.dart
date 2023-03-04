import 'package:flutter/material.dart';
import 'package:grocery/utils/responsive/responsive.dart';

class LoginWidget extends StatelessWidget {
  final VoidCallback tapOnContinue;
  const LoginWidget({
    super.key,
    required this.tapOnContinue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.hs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 25.h),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 150.h,
            ),
          ),
          SizedBox(height: 10.h),
          Center(
            child: Text(
              "INDIA'S FIRST",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.f,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Center(
            child: Text(
              "APP FOR STREET MMBO",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.f,
              ),
            ),
          ),
          SizedBox(height: 40.h),
          Text(
            "ALMOST THERE!",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.f,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            "Login or Sign up to place your order",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.f,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20.h),
          TextField(
            decoration: InputDecoration(
              labelText: 'PHONE NUMBER',
              hintText: 'Enter Your Number',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14.f,
              ),
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 14.f,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 35.h,
            child: ElevatedButton(
              onPressed: () => tapOnContinue(),
              child: Text(
                'CONTINUE',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.f,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/india_flag.png',
                    height: 25.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(height: 5.h),
                Text(
                  "Proudly make india",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.f,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
