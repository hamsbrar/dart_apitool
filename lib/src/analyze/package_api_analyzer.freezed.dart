// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'package_api_analyzer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$_FileToAnalyzeEntry {
  String get filePath => throw _privateConstructorUsedError;
  List<String> get shownNames => throw _privateConstructorUsedError;
  List<String> get hiddenNames => throw _privateConstructorUsedError;
  Set<String> get exportedBy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$FileToAnalyzeEntryCopyWith<_FileToAnalyzeEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FileToAnalyzeEntryCopyWith<$Res> {
  factory _$FileToAnalyzeEntryCopyWith(
          _FileToAnalyzeEntry value, $Res Function(_FileToAnalyzeEntry) then) =
      __$FileToAnalyzeEntryCopyWithImpl<$Res>;
  $Res call(
      {String filePath,
      List<String> shownNames,
      List<String> hiddenNames,
      Set<String> exportedBy});
}

/// @nodoc
class __$FileToAnalyzeEntryCopyWithImpl<$Res>
    implements _$FileToAnalyzeEntryCopyWith<$Res> {
  __$FileToAnalyzeEntryCopyWithImpl(this._value, this._then);

  final _FileToAnalyzeEntry _value;
  // ignore: unused_field
  final $Res Function(_FileToAnalyzeEntry) _then;

  @override
  $Res call({
    Object? filePath = freezed,
    Object? shownNames = freezed,
    Object? hiddenNames = freezed,
    Object? exportedBy = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      shownNames: shownNames == freezed
          ? _value.shownNames
          : shownNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hiddenNames: hiddenNames == freezed
          ? _value.hiddenNames
          : hiddenNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exportedBy: exportedBy == freezed
          ? _value.exportedBy
          : exportedBy // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$$__FileToAnalyzeEntryCopyWith<$Res>
    implements _$FileToAnalyzeEntryCopyWith<$Res> {
  factory _$$__FileToAnalyzeEntryCopyWith(_$__FileToAnalyzeEntry value,
          $Res Function(_$__FileToAnalyzeEntry) then) =
      __$$__FileToAnalyzeEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String filePath,
      List<String> shownNames,
      List<String> hiddenNames,
      Set<String> exportedBy});
}

/// @nodoc
class __$$__FileToAnalyzeEntryCopyWithImpl<$Res>
    extends __$FileToAnalyzeEntryCopyWithImpl<$Res>
    implements _$$__FileToAnalyzeEntryCopyWith<$Res> {
  __$$__FileToAnalyzeEntryCopyWithImpl(_$__FileToAnalyzeEntry _value,
      $Res Function(_$__FileToAnalyzeEntry) _then)
      : super(_value, (v) => _then(v as _$__FileToAnalyzeEntry));

  @override
  _$__FileToAnalyzeEntry get _value => super._value as _$__FileToAnalyzeEntry;

  @override
  $Res call({
    Object? filePath = freezed,
    Object? shownNames = freezed,
    Object? hiddenNames = freezed,
    Object? exportedBy = freezed,
  }) {
    return _then(_$__FileToAnalyzeEntry(
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      shownNames: shownNames == freezed
          ? _value._shownNames
          : shownNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hiddenNames: hiddenNames == freezed
          ? _value._hiddenNames
          : hiddenNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      exportedBy: exportedBy == freezed
          ? _value._exportedBy
          : exportedBy // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$__FileToAnalyzeEntry implements __FileToAnalyzeEntry {
  const _$__FileToAnalyzeEntry(
      {required this.filePath,
      final List<String> shownNames = const [],
      final List<String> hiddenNames = const [],
      required final Set<String> exportedBy})
      : _shownNames = shownNames,
        _hiddenNames = hiddenNames,
        _exportedBy = exportedBy;

  @override
  final String filePath;
  final List<String> _shownNames;
  @override
  @JsonKey()
  List<String> get shownNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shownNames);
  }

  final List<String> _hiddenNames;
  @override
  @JsonKey()
  List<String> get hiddenNames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hiddenNames);
  }

  final Set<String> _exportedBy;
  @override
  Set<String> get exportedBy {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_exportedBy);
  }

  @override
  String toString() {
    return '_FileToAnalyzeEntry(filePath: $filePath, shownNames: $shownNames, hiddenNames: $hiddenNames, exportedBy: $exportedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$__FileToAnalyzeEntry &&
            const DeepCollectionEquality().equals(other.filePath, filePath) &&
            const DeepCollectionEquality()
                .equals(other._shownNames, _shownNames) &&
            const DeepCollectionEquality()
                .equals(other._hiddenNames, _hiddenNames) &&
            const DeepCollectionEquality()
                .equals(other._exportedBy, _exportedBy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filePath),
      const DeepCollectionEquality().hash(_shownNames),
      const DeepCollectionEquality().hash(_hiddenNames),
      const DeepCollectionEquality().hash(_exportedBy));

  @JsonKey(ignore: true)
  @override
  _$$__FileToAnalyzeEntryCopyWith<_$__FileToAnalyzeEntry> get copyWith =>
      __$$__FileToAnalyzeEntryCopyWithImpl<_$__FileToAnalyzeEntry>(
          this, _$identity);
}

abstract class __FileToAnalyzeEntry implements _FileToAnalyzeEntry {
  const factory __FileToAnalyzeEntry(
      {required final String filePath,
      final List<String> shownNames,
      final List<String> hiddenNames,
      required final Set<String> exportedBy}) = _$__FileToAnalyzeEntry;

  @override
  String get filePath;
  @override
  List<String> get shownNames;
  @override
  List<String> get hiddenNames;
  @override
  Set<String> get exportedBy;
  @override
  @JsonKey(ignore: true)
  _$$__FileToAnalyzeEntryCopyWith<_$__FileToAnalyzeEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
