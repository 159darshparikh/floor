import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:grocery/core/model/profile.dart';
import 'package:grocery/main.dart';

part 'profile_cubit.freezed.dart';
part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit()
      : super(
          ProfileState.initial(),
        );

  void checkData({required int id}) async {
    try {
      emit(
        state.copyWith(
          getProfileState: const GetProfileState.inProgress(),
        ),
      );
      final profileDao = Initialize.database.profileDao;

      Profile res = await profileDao.findProfileById(id);
      emit(
        state.copyWith(
          getProfileState: GetProfileState.success(profile: res),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          getProfileState: const GetProfileState.failed(),
        ),
      );
    }
  }

  Future<void> insertData({
    required Profile profile,
    required bool isUpdate,
  }) async {
    try {
      final profileDao = Initialize.database.profileDao;

      if (isUpdate) {
        await profileDao.updateProfileById(
          profile.id,
          profile.businessName,
          profile.businessRegisteredOrNot,
          profile.collection,
          profile.averageOrder,
        );
      } else {
        await profileDao.insertProfile(profile);
      }
    } catch (e) {
      rethrow;
    }
  }

  void onSelect({required String registeredOrNot}) {
    emit(
      state.copyWith(
        selectedBusiness: registeredOrNot,
      ),
    );
  }
}
