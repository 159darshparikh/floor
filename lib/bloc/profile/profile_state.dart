part of 'profile_cubit.dart';

@freezed

/// [ProfileState] will hold states of exercises
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required String selectedBusiness,
    required GetProfileState getProfileState,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        selectedBusiness: '',
        getProfileState: GetProfileState.initial(),
      );
}

@freezed
class GetProfileState with _$GetProfileState {
  const factory GetProfileState.initial() = _GetProfileStateInitial;
  const factory GetProfileState.inProgress() = _GetProfileStateinProgress;
  const factory GetProfileState.success({required Profile profile}) =
      _GetProfileStateSuccess;
  const factory GetProfileState.failed() = _GetProfileStateFailed;
}
