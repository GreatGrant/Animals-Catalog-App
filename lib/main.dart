import 'package:flutter/material.dart';

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

class _HomePageState extends State<HomePage> {
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
              tabs: tabs
          )
        ],
      ),
    );
  }
}
