import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import 'package:grocery/bloc/profile/profile_cubit.dart';
import 'package:grocery/core/model/profile.dart';
import 'package:grocery/presentation/widgets/common/loader/common_loader.dart';
import 'package:grocery/presentation/widgets/profile/profile_widget.dart';

class ProfileContainer extends StatefulWidget {
  const ProfileContainer({super.key});

  @override
  State<ProfileContainer> createState() => _ProfileContainerState();
}

class _ProfileContainerState extends State<ProfileContainer> {
  String selected = '';
  TextEditingController businessName = TextEditingController();
  TextEditingController collection = TextEditingController();
  TextEditingController averageOrder = TextEditingController();
  late ProfileCubit profileCubit;

  @override
  void initState() {
    super.initState();
    profileCubit = BlocProvider.of<ProfileCubit>(context);
    initDatabase();
  }

  void tapOnBack() {
    Navigator.pop(context);
  }

  void onSelect({required String registeredOrNot}) {
    selected = registeredOrNot;
    profileCubit.onSelect(registeredOrNot: registeredOrNot);
  }

  int getRandomId() {
    var random = Random();
    return random.nextInt(100);
  }

  initDatabase() async {
    final corebox = await Hive.openBox('core');
    final String id = corebox.get('id', defaultValue: '').toString();
    if (id.isNotEmpty) {
      checkData(id: int.parse(id));
    }
  }

  checkData({required int id}) async {
    profileCubit.checkData(id: id);
  }

  Future<void> tapOnSubmit({required Profile? profile}) async {
    final corebox = await Hive.openBox('core');
    final id = profile != null
        ? corebox.get('id', defaultValue: '')
        : getRandomId().toString();
    corebox.put('id', id.toString());

    Profile profileDetails = Profile(
      int.parse(id),
      businessName.text,
      selected,
      collection.text,
      averageOrder.text,
    );

    await profileCubit.insertData(
      profile: profileDetails,
      isUpdate: profile != null,
    );
    tapOnBack();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        return state.getProfileState.maybeWhen(
          failed: () => const CommonLoader(),
          orElse: () => profileWidget(
            state.selectedBusiness,
            null,
          ),
          success: (profile) {
            selected =
                selected.isEmpty ? profile.businessRegisteredOrNot : selected;
            averageOrder.text = profile.averageOrder;
            businessName.text = profile.businessName;
            collection.text = profile.collection;
            return profileWidget(
              selected,
              profile,
            );
          },
        );
      },
    );
  }

  Widget profileWidget(String businessRegisteredOrNot, Profile? profile) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ProfileWidget(
          tapOnBack: tapOnBack,
          tapOnSubmit: tapOnSubmit,
          onSelect: onSelect,
          registeredOrNot: businessRegisteredOrNot,
          averageOrder: averageOrder,
          businessName: businessName,
          collection: collection,
          profile: profile,
        ),
      ),
    );
  }
}
