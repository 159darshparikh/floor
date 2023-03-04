import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:grocery/utils/responsive/responsive.dart';

class HomeWidget extends StatelessWidget {
  final VoidCallback tapOnProfile;
  const HomeWidget({
    super.key,
    required this.tapOnProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.hs),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.near_me,
                              color: Colors.orange,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "BLOCK C3A",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.f,
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
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => tapOnProfile(),
                      child: ClipOval(
                        child: Container(
                          color: Colors.grey[200],
                          height: 50.w,
                          width: 50.w,
                          child: Icon(
                            Icons.person,
                            size: 40.h,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.all(10.s),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.d),
                    ),
                    color: Colors.grey[100],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search for veggis, fruits and more...',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.f,
                          color: Colors.grey,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                        size: 20.s,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  padding: EdgeInsets.all(10.s),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.d),
                    ),
                    color: Colors.green[50],
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.moped,
                        color: Colors.green,
                        size: 20.s,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Delivery slot - ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 14.f,
                        ),
                      ),
                      Text(
                        'Dec. 05 Mon (6am - 9pm)',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14.f,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),
                Container(
                  constraints: BoxConstraints.expand(height: 200.h),
                  child: Swiper(
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.d),
                        child: const Image(
                          image: NetworkImage(
                            "https://lh3.googleusercontent.com/wIcl3tehFmOUpq-Jl3hlVbZVFrLHePRtIDWV5lZwBVDr7kEAgLTChyvXUclMVQDRHDEcDhY=w640-h400-e365-rj-sc0x00ffffff",
                          ),
                          fit: BoxFit.fitHeight,
                        ),
                      );
                    },
                    itemCount: 10,
                    scale: 0.8,
                    pagination: const SwiperPagination(),
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Flash Deals",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.f,
                      ),
                    ),
                    Text(
                      "See more >",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.f,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 250.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 10.h,
                        width: 150.w,
                        margin: EdgeInsets.only(right: 15.hs),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.d),
                                child: Image.asset(
                                  'assets/images/apple.png',
                                  fit: BoxFit.fill,
                                  height: 100.h,
                                  width: 120.w,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "Tomato",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20.f,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            Text(
                              "(Tamatar)",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 14.f,
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Row(
                              children: [
                                Text(
                                  "Rs. 42",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.f,
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Rs. 24/kg",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.f,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                Text(
                                  "Rs. 24",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.f,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  "Pack:500g",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.f,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.hs,
                                vertical: 5.vs,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100.d),
                                ),
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Text(
                                  'ADD',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.f,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  "Category",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.f,
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Expanded(
                      child: category(title: 'Fruits'),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: category(title: 'Leafy Fruits'),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: category(title: 'Vegetables'),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Expanded(
                      child: category(title: 'Seasonals Vegetables'),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: category(title: 'Seasonals Fruits'),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: category(title: 'Fresh Fruits'),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                SizedBox(
                  height: 150.h,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 10.h,
                        width: 150.w,
                        margin: EdgeInsets.only(right: 15.hs),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.d),
                          child: Image.asset(
                            'assets/images/fresh.png',
                            fit: BoxFit.fill,
                            height: 100.h,
                            width: 120.w,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 50.h,
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 30.h,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.f,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 30.h,
                      ),
                      Text(
                        "Fresh",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.f,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 30.h,
                      ),
                      Text(
                        "Food",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.f,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 30.h,
                      ),
                      Text(
                        "Mart",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.f,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/home.png',
                        height: 30.h,
                      ),
                      Text(
                        "Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.f,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget category({
    required String title,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.d),
          child: Image.asset(
            'assets/images/fruit.png',
            fit: BoxFit.fill,
            height: 100.h,
            width: 120.w,
          ),
        ),
        SizedBox(height: 5.h),
        Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.f,
            ),
          ),
        ),
      ],
    );
  }
}
