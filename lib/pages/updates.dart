import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:nfl/widgets/news_box.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Column(
            //   children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "week 23",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "NBC Premier League",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        radius: 30,
                      )
                    ],
                  ),
                ),
              
            //   ],
            // ),

            //Container(child:
            
             Column(children: [

  Container(
                  height: 200,
                 // color: Colors.white60,
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child:
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage("assets/SvY.jpeg"),
                      fit: BoxFit.cover,
                      
                    ),
                  ),
               ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 130,
                    //  color: Colors.blue,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "NIPASHE",
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "SOMETHING SOMETHING SOMETHING SOMETHING SOMETHING SOMETHING SOMETHING",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            ],),
            //),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 1000,
                  //  color: Colors.white54,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Recent News",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border:
                                    Border.all(color: Colors.blue, width: 1),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'See all',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.blue,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                      ),
                      Expanded(
                        //  height: 1950,
                        child: GridView.builder(
                            // physics: NeverScrollableScrollPhysics(),

                            shrinkWrap: true,
                            itemCount: 9,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2, childAspectRatio: 0.9),
                            itemBuilder: (context, index) {
                              return const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: NewsBox());
                            }),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 130,
              color: Colors.white,
              child: const Column(
                children: [
                  Text(
                    "Sponsors",
                    style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        18,
                        4,
                        68,
                      ),
                      fontSize: 20,fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(image: AssetImage("assets/ligi_logo.png"),height: 100,width: 100,),
                      SizedBox(width: 20,),
                      Image(image: AssetImage("assets/spotpesa.png"),height: 100,width: 100,),
                      SizedBox(width: 20,),
                      Image(image: AssetImage("assets/ligi_logo.png"),height: 100,width: 100,),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
