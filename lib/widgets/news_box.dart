import 'package:flutter/material.dart';

class NewsBox extends StatelessWidget {
  const NewsBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage("assets/nbc-pic.jpg"  
            ),
           fit:BoxFit.fill
          
           ),
          Text("Mwananchi",style: TextStyle(color: Colors.blue),),
          Text("Something something something something here also add something",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),)
        ],
      ),
    );
  }
}
