// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_character_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListCharacterResponse _$ListCharacterResponseFromJson(
        Map<String, dynamic> json) =>
    ListCharacterResponse()
      ..results = (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ListCharacterResponseToJson(
        ListCharacterResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
