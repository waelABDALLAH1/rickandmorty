import 'package:json_annotation/json_annotation.dart';
import 'character.dart';

part 'list_character_response.g.dart';

@JsonSerializable()
class ListCharacterResponse {
  ListCharacterResponse();


  @JsonKey(name: "results")
  late List<Character> results;
  factory ListCharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$ListCharacterResponseFromJson(json);

  Map<String, dynamic> toJson(data) => _$ListCharacterResponseToJson(this);


}