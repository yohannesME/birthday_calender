// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthday.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Birthday _$$_BirthdayFromJson(Map<String, dynamic> json) => _$_Birthday(
      id: json['id'] as String,
      name: json['name'] as String,
      date: json['date'] as String,
      image: json['image'] as String?,
      note: json['note'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_BirthdayToJson(_$_Birthday instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'image': instance.image,
      'note': instance.note,
      'tags': instance.tags,
    };
