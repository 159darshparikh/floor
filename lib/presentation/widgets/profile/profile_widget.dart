import 'package:flutter/material.dart';
import 'package:grocery/core/model/profile.dart';
import 'package:grocery/utils/responsive/responsive.dart';

class ProfileWidget extends StatelessWidget {
  final VoidCallback tapOnBack;
  final Function({required Profile? profile}) tapOnSubmit;
  final Function({required String registeredOrNot}) onSelect;
  final String registeredOrNot;
  final TextEditingController businessName;
  final TextEditingController collection;
  final TextEditingController averageOrder;
  final Profile? profile;
  const ProfileWidget({
    super.key,
    required this.tapOnBack,
    required this.tapOnSubmit,
    required this.onSelect,
    required this.registeredOrNot,
    required this.averageOrder,
    required this.businessName,
    required this.collection,
    this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(15.s),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => tapOnBack(),
                  child: const Icon(
                    Icons.west,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 100.w / 2,
                ),
                Text(
                  "Complete Your Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20.f,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15.s),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.d),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 45.w,
                              width: 45.w,
                              color: Colors.green,
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.f,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add General Details',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16.f,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Summarize if needed',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 14.f,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.expand_more,
                        size: 35.s,
                      )
                    ],
                  ),
                  SizedBox(height: 25.h),
                  ClipOval(
                    child: Container(
                      color: Colors.grey[200],
                      height: 80.w,
                      width: 80.w,
                      child: Icon(
                        Icons.person,
                        size: 40.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    "Upload store pic",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14.f,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  TextField(
                    controller: businessName,
                    decoration: InputDecoration(
                      labelText: 'Business Name',
                      hintText: 'Enter Business Name',
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
                  SizedBox(height: 15.h),
                  RadioListTile(
                    title: Text(
                      "I have a registered business",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.f,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    value: "registered",
                    groupValue: registeredOrNot,
                    activeColor: Colors.green,
                    contentPadding: const EdgeInsets.all(0),
                    onChanged: (value) {
                      onSelect(registeredOrNot: value ?? '');
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      "I don't have a registered business",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.f,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    value: "non registered",
                    groupValue: registeredOrNot,
                    activeColor: Colors.green,
                    contentPadding: const EdgeInsets.all(0),
                    onChanged: (value) {
                      onSelect(registeredOrNot: value ?? '');
                    },
                  ),
                  TextField(
                    controller: collection,
                    decoration: InputDecoration(
                      labelText: 'Collection',
                      hintText: 'Enter Collection',
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
                  SizedBox(height: 15.h),
                  TextField(
                    controller: averageOrder,
                    decoration: InputDecoration(
                      labelText: 'Average order',
                      hintText: 'Enter average order value for one',
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () => tapOnSubmit(profile: profile),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text(
                        'SUBMIT',
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
      ),
    );
  }
}
