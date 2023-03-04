import 'package:flutter/material.dart';
import 'package:grocery/utils/responsive/responsive.dart';

class LocationWidget extends StatelessWidget {
  final VoidCallback tapOnBack;
  final VoidCallback tapOnConfirm;
  const LocationWidget({
    super.key,
    required this.tapOnBack,
    required this.tapOnConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/map.png',
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Positioned(
          left: 10.hs,
          top: 10.vs,
          child: GestureDetector(
            onTap: () => tapOnBack(),
            child: ClipOval(
              child: Container(
                color: Colors.white,
                height: 50.h,
                width: 50.w,
                child: const Icon(Icons.west),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Container(
                width: 128.w,
                padding: EdgeInsets.all(10.s),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.d),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.gps_fixed,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      'LOCATE ME',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.f,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                padding: EdgeInsets.all(15.s),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "SELECT DELIVERY LOCATION",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16.f,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              size: 20.s,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "Block 47",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16.f,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(5.s),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.d),
                            ),
                            color: Colors.grey[200],
                          ),
                          child: Text(
                            'CHANGE',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.f,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      width: 220.w,
                      child: Text(
                        "Block C3, Janakpuri, New Delhi, Delhi 110058, India.",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.f,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 35.h,
                      child: ElevatedButton(
                        onPressed: () => tapOnConfirm(),
                        child: Text(
                          'CONFIRM LOCATION',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16.f,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
