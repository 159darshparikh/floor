// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  String get selectedBusiness => throw _privateConstructorUsedError;
  GetProfileState get getProfileState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call({String selectedBusiness, GetProfileState getProfileState});

  $GetProfileStateCopyWith<$Res> get getProfileState;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBusiness = null,
    Object? getProfileState = null,
  }) {
    return _then(_value.copyWith(
      selectedBusiness: null == selectedBusiness
          ? _value.selectedBusiness
          : selectedBusiness // ignore: cast_nullable_to_non_nullable
              as String,
      getProfileState: null == getProfileState
          ? _value.getProfileState
          : getProfileState // ignore: cast_nullable_to_non_nullable
              as GetProfileState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetProfileStateCopyWith<$Res> get getProfileState {
    return $GetProfileStateCopyWith<$Res>(_value.getProfileState, (value) {
      return _then(_value.copyWith(getProfileState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String selectedBusiness, GetProfileState getProfileState});

  @override
  $GetProfileStateCopyWith<$Res> get getProfileState;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBusiness = null,
    Object? getProfileState = null,
  }) {
    return _then(_$_ProfileState(
      selectedBusiness: null == selectedBusiness
          ? _value.selectedBusiness
          : selectedBusiness // ignore: cast_nullable_to_non_nullable
              as String,
      getProfileState: null == getProfileState
          ? _value.getProfileState
          : getProfileState // ignore: cast_nullable_to_non_nullable
              as GetProfileState,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.selectedBusiness, required this.getProfileState});

  @override
  final String selectedBusiness;
  @override
  final GetProfileState getProfileState;

  @override
  String toString() {
    return 'ProfileState(selectedBusiness: $selectedBusiness, getProfileState: $getProfileState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.selectedBusiness, selectedBusiness) ||
                other.selectedBusiness == selectedBusiness) &&
            (identical(other.getProfileState, getProfileState) ||
                other.getProfileState == getProfileState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, selectedBusiness, getProfileState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final String selectedBusiness,
      required final GetProfileState getProfileState}) = _$_ProfileState;

  @override
  String get selectedBusiness;
  @override
  GetProfileState get getProfileState;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Profile profile) success,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Profile profile)? success,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Profile profile)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateinProgress value) inProgress,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateinProgress value)? inProgress,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateinProgress value)? inProgress,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateCopyWith(
          GetProfileState value, $Res Function(GetProfileState) then) =
      _$GetProfileStateCopyWithImpl<$Res, GetProfileState>;
}

/// @nodoc
class _$GetProfileStateCopyWithImpl<$Res, $Val extends GetProfileState>
    implements $GetProfileStateCopyWith<$Res> {
  _$GetProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetProfileStateInitialCopyWith<$Res> {
  factory _$$_GetProfileStateInitialCopyWith(_$_GetProfileStateInitial value,
          $Res Function(_$_GetProfileStateInitial) then) =
      __$$_GetProfileStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProfileStateInitialCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$_GetProfileStateInitial>
    implements _$$_GetProfileStateInitialCopyWith<$Res> {
  __$$_GetProfileStateInitialCopyWithImpl(_$_GetProfileStateInitial _value,
      $Res Function(_$_GetProfileStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProfileStateInitial implements _GetProfileStateInitial {
  const _$_GetProfileStateInitial();

  @override
  String toString() {
    return 'GetProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Profile profile) success,
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Profile profile)? success,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Profile profile)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateinProgress value) inProgress,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateinProgress value)? inProgress,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateinProgress value)? inProgress,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateInitial implements GetProfileState {
  const factory _GetProfileStateInitial() = _$_GetProfileStateInitial;
}

/// @nodoc
abstract class _$$_GetProfileStateinProgressCopyWith<$Res> {
  factory _$$_GetProfileStateinProgressCopyWith(
          _$_GetProfileStateinProgress value,
          $Res Function(_$_GetProfileStateinProgress) then) =
      __$$_GetProfileStateinProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProfileStateinProgressCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$_GetProfileStateinProgress>
    implements _$$_GetProfileStateinProgressCopyWith<$Res> {
  __$$_GetProfileStateinProgressCopyWithImpl(
      _$_GetProfileStateinProgress _value,
      $Res Function(_$_GetProfileStateinProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProfileStateinProgress implements _GetProfileStateinProgress {
  const _$_GetProfileStateinProgress();

  @override
  String toString() {
    return 'GetProfileState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileStateinProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Profile profile) success,
    required TResult Function() failed,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Profile profile)? success,
    TResult? Function()? failed,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Profile profile)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateinProgress value) inProgress,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateFailed value) failed,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateinProgress value)? inProgress,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateFailed value)? failed,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateinProgress value)? inProgress,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateinProgress implements GetProfileState {
  const factory _GetProfileStateinProgress() = _$_GetProfileStateinProgress;
}

/// @nodoc
abstract class _$$_GetProfileStateSuccessCopyWith<$Res> {
  factory _$$_GetProfileStateSuccessCopyWith(_$_GetProfileStateSuccess value,
          $Res Function(_$_GetProfileStateSuccess) then) =
      __$$_GetProfileStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile});
}

/// @nodoc
class __$$_GetProfileStateSuccessCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$_GetProfileStateSuccess>
    implements _$$_GetProfileStateSuccessCopyWith<$Res> {
  __$$_GetProfileStateSuccessCopyWithImpl(_$_GetProfileStateSuccess _value,
      $Res Function(_$_GetProfileStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$_GetProfileStateSuccess(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc

class _$_GetProfileStateSuccess implements _GetProfileStateSuccess {
  const _$_GetProfileStateSuccess({required this.profile});

  @override
  final Profile profile;

  @override
  String toString() {
    return 'GetProfileState.success(profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetProfileStateSuccess &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetProfileStateSuccessCopyWith<_$_GetProfileStateSuccess> get copyWith =>
      __$$_GetProfileStateSuccessCopyWithImpl<_$_GetProfileStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Profile profile) success,
    required TResult Function() failed,
  }) {
    return success(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Profile profile)? success,
    TResult? Function()? failed,
  }) {
    return success?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Profile profile)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateinProgress value) inProgress,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateFailed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateinProgress value)? inProgress,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateFailed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateinProgress value)? inProgress,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateSuccess implements GetProfileState {
  const factory _GetProfileStateSuccess({required final Profile profile}) =
      _$_GetProfileStateSuccess;

  Profile get profile;
  @JsonKey(ignore: true)
  _$$_GetProfileStateSuccessCopyWith<_$_GetProfileStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetProfileStateFailedCopyWith<$Res> {
  factory _$$_GetProfileStateFailedCopyWith(_$_GetProfileStateFailed value,
          $Res Function(_$_GetProfileStateFailed) then) =
      __$$_GetProfileStateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetProfileStateFailedCopyWithImpl<$Res>
    extends _$GetProfileStateCopyWithImpl<$Res, _$_GetProfileStateFailed>
    implements _$$_GetProfileStateFailedCopyWith<$Res> {
  __$$_GetProfileStateFailedCopyWithImpl(_$_GetProfileStateFailed _value,
      $Res Function(_$_GetProfileStateFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetProfileStateFailed implements _GetProfileStateFailed {
  const _$_GetProfileStateFailed();

  @override
  String toString() {
    return 'GetProfileState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetProfileStateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(Profile profile) success,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function(Profile profile)? success,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(Profile profile)? success,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial value) initial,
    required TResult Function(_GetProfileStateinProgress value) inProgress,
    required TResult Function(_GetProfileStateSuccess value) success,
    required TResult Function(_GetProfileStateFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial value)? initial,
    TResult? Function(_GetProfileStateinProgress value)? inProgress,
    TResult? Function(_GetProfileStateSuccess value)? success,
    TResult? Function(_GetProfileStateFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial value)? initial,
    TResult Function(_GetProfileStateinProgress value)? inProgress,
    TResult Function(_GetProfileStateSuccess value)? success,
    TResult Function(_GetProfileStateFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateFailed implements GetProfileState {
  const factory _GetProfileStateFailed() = _$_GetProfileStateFailed;
}
