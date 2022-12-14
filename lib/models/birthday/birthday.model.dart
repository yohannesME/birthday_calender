import 'package:bahere_hasab/bahere_hasab.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'birthday.model.freezed.dart';
part 'birthday.model.g.dart';

@freezed
class Birthday with _$Birthday {
  Birthday._();
  @JsonSerializable(explicitToJson: true)
  factory Birthday(
      {required String id,
      required String name,
      required String date,
      String? image,
      String? note,
      @Default([]) List<String> tags}) = _Birthday;
}
