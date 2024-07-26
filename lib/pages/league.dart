import 'package:flutter/material.dart';

class LeagueStand extends StatelessWidget {
  const LeagueStand({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "NBC Premier League",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 250,
              width: double.infinity,
              // color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Young Africans Matches",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: (context, ind) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                             
                              height: 100,
                              width: 300,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white,),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(height: 30,),
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
