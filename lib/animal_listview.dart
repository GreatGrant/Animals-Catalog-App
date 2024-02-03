import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'models/data.dart';

class AnimalListView extends StatelessWidget {
  final List<Animal> animalList;
  final Function(Animal) onTap;

  const AnimalListView({
    Key? key,
    required this.animalList,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: animalList.length,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                onTap: () => onTap(animalList[index]),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          imageUrl: animalList[index].animalImage!,
                          width: 300,
                          height: 350,
                          fit: BoxFit.cover,
                          placeholder: (context,
                              url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          animalList[index].animalName!,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}