import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../Provider/list_characters_provider.dart';



class ListCharacterScreen extends ConsumerWidget {
  const ListCharacterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characters = ref.watch(listCharacterResponseProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Rick and morty")),
      ),
      body: characters.when(
        data: (listCharacterResponse) {
          final characters = listCharacterResponse.results;
          return ListView.builder(
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              return ListTile(
                title: Text(character.name),
                leading: CircleAvatar(
                  backgroundImage:  NetworkImage(character.image)
                ),
                subtitle: Text(character.species),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text("Error: $error"),
        ),
      ),
    );
  }
}
