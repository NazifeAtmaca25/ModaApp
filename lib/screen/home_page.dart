
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller =TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Moda Uygulaması",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.camera_alt_outlined,size: 30,),
        )],
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:TabBar(
        controller: controller,
          indicatorColor: Colors.brown,
          tabs: [
            Tab(icon: Icon(Icons.home_outlined,size: 30,color:Colors.black,),),
            Tab(icon: Icon(Icons.home_outlined,size: 30,color:Colors.black,),),
            Tab(icon: Icon(Icons.home_outlined,size: 30,color:Colors.black,),),
            Tab(icon: Icon(Icons.home_outlined,size: 30,color:Colors.black,),),
          ]),
    );
  }
}
