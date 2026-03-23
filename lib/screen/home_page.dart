import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Moda Uygulaması",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.camera_alt_outlined, size: 30),
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildColumn("assets/model1.jpeg","assets/chanellogo.jpg"),
                  buildColumn("assets/model2.jpeg","assets/chloelogo.png"),
                  buildColumn("assets/model3.jpeg","assets/louisvuitton.jpg"),
                  buildColumn("assets/model1.jpeg","assets/chanellogo.jpg"),
                  buildColumn("assets/model2.jpeg","assets/chloelogo.png"),
                  buildColumn("assets/model3.jpeg","assets/louisvuitton.jpg"),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [CircleAvatar(
                                backgroundImage: AssetImage("assets/model1.jpeg"),
                                minRadius: 25,
                              ),
                                SizedBox(width: 10,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Daisy",style: TextStyle(fontSize: 16,color: Colors.black),),
                                    Text("34 mins ago",style: TextStyle(fontSize: 12,color: Colors.black38),)
                                  ],
                                ),],
                            ),
                            Icon(Icons.more_vert,size: 24,)
                          ],
                        ),
                      ),
                      Text("This official website features a ribbed knit zipper jacket that is modern and stylish. "
                          "It looks very temperament and is recommend to friends.",style: TextStyle(fontSize:12, color: Colors.black38 ),),
                      Row(children: [
                        buildContainer("# Louis vutton"),
                        SizedBox(width: 15,),
                        buildContainer("#Chloe")
                      ],),
                      Divider(height: 15,color: Colors.black26,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.reply_outlined,color: Colors.black26,),
                              SizedBox(width: 5,),
                              Text("1.7k",style: TextStyle(color: Colors.black26),),
                              SizedBox(width: 15,),
                              Icon(Icons.message,color: Colors.black26),
                              SizedBox(width: 5,),
                              Text("325",style: TextStyle(color: Colors.black26))
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("2.3k",style: TextStyle(color: Colors.black26))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        indicatorColor: Colors.brown,
        tabs: [
          Tab(icon: Icon(Icons.home_outlined, size: 30, color: Colors.black)),
          Tab(icon: Icon(Icons.home_outlined, size: 30, color: Colors.black)),
          Tab(icon: Icon(Icons.home_outlined, size: 30, color: Colors.black)),
          Tab(icon: Icon(Icons.home_outlined, size: 30, color: Colors.black)),
        ],
      ),
    );
  }

  Container buildContainer(String label) {
    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade300,
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: Text(label,style: TextStyle(color: Colors.black38),),
                      );
  }

  Widget buildColumn(String profile, String logo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profile),
                minRadius: 40,
              ),
              Positioned(
                right: 1,
                bottom: 1,
                child: ClipOval(
                  child: Image.asset(logo,fit: BoxFit.fill,height: 25,width: 25,),
                )
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.white,
            ),
            child: Text("Follow"),
          ),
        ],
      ),
    );
  }
}
