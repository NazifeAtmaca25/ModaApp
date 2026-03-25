import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imagePath;

  const DetailPage({super.key, required this.imagePath});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imagePath,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
              bottom: MediaQuery.of(context).size.height/2,
              child: Container(
            decoration: BoxDecoration(
              color:Colors.black.withValues(alpha: 0.4 ),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 10),
            child: Row(
              children: [
                Text("LAMINATED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.white),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 13,)
              ],
            ),
          )),
          Positioned(
            bottom: 15,
              left: 15,
              right: 15,
              child: Container(//card veya material  kullanabilirdin
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 200,
            width: MediaQuery.of(context).size.width-30,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("assets/dress.jpg"),
                          fit: BoxFit.cover),
                          border: Border.all(color: Colors.black,width: 1)
                        ),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("LAMINATED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                            SizedBox(height: 5,),
                            Text("Louis vuitton",style: TextStyle(fontSize: 16,color: Colors.black38),),
                            SizedBox(height: 5,),
                            Text("One button V-neck sling long-sleeved waist female stitching dress",style: TextStyle(fontSize: 13,color: Colors.black38),)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Divider(height: 10,color: Colors.black38,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$6500",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                      FloatingActionButton.small(onPressed: (){},backgroundColor: Colors.brown,shape: CircleBorder(),child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 20,),)
                    ],
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
