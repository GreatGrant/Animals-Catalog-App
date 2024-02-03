import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'models/data.dart';

class DetailsPage extends StatefulWidget {
  final Animal animal;

  const DetailsPage({super.key, required this.animal});
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(imageUrl: widget.animal.animalImage!,height: 300,width:double.infinity,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 275),
            child: Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),
                  ),
                  color: Colors.orange
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(widget.animal.animalName!,style: const TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(widget.animal.animalInfo!,style: const TextStyle(fontSize: 18,color: Colors.white,)),
                    ),
                  ],
                ),
              ),
            )),
          ),

          Positioned(
            top: 40,
            left: 16,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_circle_left_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),


        ],
      ),
    );
  }
}