// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character()
  ..id = json['id'] as int
  ..name = json['name'] as String
  ..status = json['status'] as String
  ..species = json['species'] as String
  ..gender = json['gender'] as String
  ..image = json['image'] as String;

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'image': instance.image,
    };
