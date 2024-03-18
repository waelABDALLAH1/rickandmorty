import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/list_character_response.dart';
import '../service/http_service.dart';

final httpServiceProvider = Provider((_) => HttpService());

final listCharacterResponseProvider = FutureProvider<ListCharacterResponse>((ref) async {
  final httpService = ref.read(httpServiceProvider);
  final response = await httpService.getRequest("/api/character");
  if (response.statusCode == 200) {
    return ListCharacterResponse.fromJson(response.data);
  } else {
    throw Exception("There is some problem status code not 200");
  }
});
