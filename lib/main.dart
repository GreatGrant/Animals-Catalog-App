import 'package:animals/models/data.dart';
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
       colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
              tabs: [
                const Tab(
                  child: Text("Mammals",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Tab(
                  child: Text(
                    "Birds",
                    style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const Tab(
                  child: Text(
                    "Reptiles",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Tab(
                  child: Text(
                    "Aquatic",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: animalList.length,
                      itemBuilder: (BuildContext context, index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailsPage(animal: animalList[index],)))
                          },
                          child: ,
                        )
                  }),
                )
              ]
          )
        ],
      ),
    );
  }
}
