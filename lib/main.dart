import 'package:animals/animal_listview.dart';
import 'package:animals/models/data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  late int _index;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _index = 0;
  }
  
  void _onTabSelected(int index){
    setState(() {
      _index = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(50)),
                  color: Colors.orange
                ),
              ),
              Container(
                height :130,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50)),
                  color: Colors.orangeAccent.shade400
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Column(
                  children: [
                    const Text(
                      "Choose your favorite Animal",
                      style: TextStyle(
                        fontSize:  22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5)
                        ),
                        color: Colors.white
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Search for favorite animal",
                          prefixIcon: Icon(Icons.search)
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.orangeAccent,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4,
              isScrollable: true,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.black,
              onTap: _onTabSelected,
              tabs: const [
                Tab(
                  child: Text("Mammals",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    "Birds",
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Reptiles",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                Tab(
                  child: Text(
                    "Aquatic",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ]),
          Expanded(
              child: IndexedStack(
                index: _index,
                children: [
                  AnimalListView(animalList: mammalList, onTap: (Animal animal) {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_)=>DetailsPage(animal: mammalList[_index]
                        )
                    )
                    ); },),
                  AnimalListView(animalList: birdsList, onTap: (Animal animal) { Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>DetailsPage(animal: birdsList[_index]
                      )
                  )
                  ); },),
                  AnimalListView(animalList: reptilesList, onTap: (Animal animal){Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>DetailsPage(animal: reptilesList[_index]
                      )
                  )
                  ); },),
                  AnimalListView(animalList: aquaticList, onTap: (Animal animal){Navigator.push(context, MaterialPageRoute(
                      builder: (_)=>DetailsPage(animal: aquaticList[_index]
                      )
                  )
                  ); },),
                ],

          ))

        ],
      ),
    );
  }
}