import 'package:flutter/material.dart';
import 'package:nfl/pages/Options.dart';
import 'package:nfl/pages/Stats.dart';
import 'package:nfl/pages/fantasy.dart';
import 'package:nfl/pages/league.dart';
import 'package:nfl/pages/updates.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});




  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final List<Widget> _Pages = [UpdatesPage(),LeagueStand(),FantasPage(),StatsPage(),OptionsPage()];
int _selectedIndex = 0;

void _bottonNavigation(int index) {

  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
extendBody: true,
body: _Pages[
  _selectedIndex
],

backgroundColor: Color.fromARGB(255, 18, 4, 68,),


bottomNavigationBar: Padding(
  padding: const EdgeInsets.all(0.0),
  child: Container(
   // margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
   // decoration: BoxDecoration(boxShadow: ),
            
       height: 70,
          child: ClipRRect( 
             
            borderRadius: BorderRadius.circular(20),
            
              // topLeft: Radius.circular(20),
              // topRight: Radius.circular(20),
           // ),
            child: BottomNavigationBar(
              
              elevation: 5,
              onTap: _bottonNavigation,
             backgroundColor: Colors.white,
               currentIndex: _selectedIndex,
               unselectedItemColor:  Color.fromARGB(255,18,4,68,),
               selectedItemColor: Color.fromARGB(255, 233, 35, 35),
               type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.newspaper_rounded,), label: "Updates"),
                  BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded), label: "League"),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: "Fantasy"),
                  BottomNavigationBarItem(icon: Icon(Icons.analytics), label: "Stats"),
                    BottomNavigationBarItem(icon: Icon(Icons.menu_rounded), label: "options"),
  
                ]),
          ),
        ),
),
    );
  }
}