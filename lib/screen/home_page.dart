import 'package:flutter/material.dart';
import 'package:moda_app/screen/detail_page.dart';

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
    controller = TabController(length: 4, vsync: this);//bu işlemi hep initstate de yap
  }
  @override
  void dispose() {
    controller.dispose();//dispose etmeyi unutma!
    super.dispose();
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
      body: SingleChildScrollView(//listviewde kullanabilirdin.
        child: Column(
          children: [
            SingleChildScrollView(//listviewde kullanabilirdin
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildColumn("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  buildColumn("assets/model2.jpeg", "assets/chloelogo.png"),
                  buildColumn("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                  buildColumn("assets/model1.jpeg", "assets/chanellogo.jpg"),
                  buildColumn("assets/model2.jpeg", "assets/chloelogo.png"),
                  buildColumn("assets/model3.jpeg", "assets/louisvuitton.jpg"),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(//material da kullanılabilir
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
                              children: [
                                CircleAvatar(//containerda kullanabilirsin
                                  backgroundImage: AssetImage(
                                    "assets/model1.jpeg",
                                  ),
                                  minRadius: 25,
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Daisy",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      "34 mins ago",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black38,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Icon(Icons.more_vert, size: 24),
                          ],
                        ),
                      ),
                      Text(
                        "This official website features a ribbed knit zipper jacket that is modern and stylish. "
                        "It looks very temperament and is recommend to friends.",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imagePath: "assets/modelgrid1.jpeg")));
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",//a b c tarzı bi değer de verilebilirdi ama diğer kısım da da aynı değer olması lazım
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage("assets/modelgrid1.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                height: 200,
                                width: (MediaQuery.of(context).size.width - 50) / 2,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imagePath: "assets/modelgrid2.jpeg")));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage("assets/modelgrid2.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    height: 95,
                                    width:
                                        (MediaQuery.of(context).size.width - 100) /
                                        2,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailPage(imagePath: "assets/modelgrid3.jpeg")));
                                },
                                child: Hero(
                                  tag: "assets/modelgrid3.jpeg",
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage("assets/modelgrid3.jpeg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    height: 95,
                                    width:
                                        (MediaQuery.of(context).size.width - 100) /
                                        2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          buildContainer("# Louis vutton"),
                          SizedBox(width: 15),
                          buildContainer("#Chloe"),
                        ],
                      ),
                      Divider(height: 15, color: Colors.black26),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.reply_outlined, color: Colors.brown.withValues(alpha: 0.2)),
                              SizedBox(width: 5),
                              Text(
                                "1.7k",
                                style: TextStyle(color: Colors.black26),
                              ),
                              SizedBox(width: 15),
                              Icon(Icons.message, color: Colors.brown.withValues(alpha: 0.2)),
                              SizedBox(width: 5),
                              Text(
                                "325",
                                style: TextStyle(color: Colors.black26),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.favorite, color: Colors.red),
                              SizedBox(width: 5),
                              Text(
                                "2.3k",
                                style: TextStyle(color: Colors.black26),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        indicatorColor: Colors.brown,
        tabs: [
          Tab(icon: Icon(Icons.more, size: 30, color: Colors.grey)),
          Tab(icon: Icon(Icons.play_arrow, size: 30, color: Colors.grey)),
          Tab(icon: Icon(Icons.navigation, size: 30, color: Colors.grey)),
          Tab(icon: Icon(Icons.supervised_user_circle, size: 30, color: Colors.grey)),
        ],
      ),
    );
  }

  Container buildContainer(String label) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.brown.withValues(alpha: 0.2),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Text(label, style: TextStyle(color: Colors.black38)),
    );
  }

  Widget buildColumn(String profile, String logo) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(backgroundImage: AssetImage(profile), minRadius: 40),
              Positioned(
                right: 1,
                bottom: 1,
                child: ClipOval(
                  child: Image.asset(
                    logo,
                    fit: BoxFit.fill,
                    height: 25,
                    width: 25,
                  ),
                ),
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
