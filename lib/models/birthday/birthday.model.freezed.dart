// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'birthday.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Birthday {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BirthdayCopyWith<Birthday> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BirthdayCopyWith<$Res> {
  factory $BirthdayCopyWith(Birthday value, $Res Function(Birthday) then) =
      _$BirthdayCopyWithImpl<$Res, Birthday>;
  @useResult
  $Res call(
      {String id,
      String name,
      String date,
      String? image,
      String? note,
      List<String> tags});
}

/// @nodoc
class _$BirthdayCopyWithImpl<$Res, $Val extends Birthday>
    implements $BirthdayCopyWith<$Res> {
  _$BirthdayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? image = freezed,
    Object? note = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BirthdayCopyWith<$Res> implements $BirthdayCopyWith<$Res> {
  factory _$$_BirthdayCopyWith(
          _$_Birthday value, $Res Function(_$_Birthday) then) =
      __$$_BirthdayCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String date,
      String? image,
      String? note,
      List<String> tags});
}

/// @nodoc
class __$$_BirthdayCopyWithImpl<$Res>
    extends _$BirthdayCopyWithImpl<$Res, _$_Birthday>
    implements _$$_BirthdayCopyWith<$Res> {
  __$$_BirthdayCopyWithImpl(
      _$_Birthday _value, $Res Function(_$_Birthday) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? image = freezed,
    Object? note = freezed,
    Object? tags = null,
  }) {
    return _then(_$_Birthday(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Birthday extends _Birthday with DiagnosticableTreeMixin {
  _$_Birthday(
      {required this.id,
      required this.name,
      required this.date,
      this.image,
      this.note,
      final List<String> tags = const []})
      : _tags = tags,
        super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String date;
  @override
  final String? image;
  @override
  final String? note;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Birthday(id: $id, name: $name, date: $date, image: $image, note: $note, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Birthday'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Birthday &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, date, image, note,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BirthdayCopyWith<_$_Birthday> get copyWith =>
      __$$_BirthdayCopyWithImpl<_$_Birthday>(this, _$identity);
}

abstract class _Birthday extends Birthday {
  factory _Birthday(
      {required final String id,
      required final String name,
      required final String date,
      final String? image,
      final String? note,
      final List<String> tags}) = _$_Birthday;
  _Birthday._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get date;
  @override
  String? get image;
  @override
  String? get note;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_BirthdayCopyWith<_$_Birthday> get copyWith =>
      throw _privateConstructorUsedError;
}
