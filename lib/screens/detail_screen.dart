import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rm_app/models/character.dart';

class DetailScreen extends StatefulWidget {
  final Character character;

  const DetailScreen(this.character, {super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final character = widget.character;

    return Scaffold(
      appBar: AppBar(
        title: Text(character.name),
        centerTitle: true,
      ),
      body: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedNetworkImage(imageUrl: character.image),
              ],
            ),
            const SizedBox(height: 16,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Status: ${character.status}", style: const TextStyle(fontSize: 20),),
                Text("Location: ${character.locationName}", style: const TextStyle(fontSize: 20),),
                Text("Gender: ${character.gender}", style: const TextStyle(fontSize: 20),),
                Text("Species: ${character.species}", style: const TextStyle(fontSize: 20),),
              ]
            ),
          ],
        ),
      )
    );
  }
}