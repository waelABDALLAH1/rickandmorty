import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  @JsonKey(name: "id")
  late int id;

  @JsonKey(name: "name")
  late String name;

  @JsonKey(name: "status")
  late String status;

  @JsonKey(name: "species")
  late String species;

  @JsonKey(name: "gender")
  late String gender;
  @JsonKey(name: "image")
  late String image;

  Character();

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
