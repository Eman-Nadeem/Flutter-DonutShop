import 'package:donutshop/utils/my_tab.dart';
import 'package:flutter/material.dart';

import '../tabs/donut_tab.dart';
import '../tabs/burger_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //my tabs
  List <Widget> myTabs= const [
    //donut tab
    MyTab(iconPath: "lib/icons/donut.png"),
    //burger tab
    MyTab(iconPath: "lib/icons/burger.png"),
    //smoothie tab
    MyTab(iconPath: "lib/icons/smoothie.png"),
    //pancake tab
    MyTab(iconPath: "lib/icons/pancakes.png"),
    //pizza tab
    MyTab(iconPath: "lib/icons/pizza.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: _appBar(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                  children: [
                    Text(
                      "I want to eat",
                      style: TextStyle(
                        fontSize: 24
                      )
                    ),
                    Text(
                      " Eat",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ],
                ),
            ),
            
            const SizedBox(height: 24,),
      
            //tab bar
            TabBar(tabs: myTabs,),

            //tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  //donut tab
                  DonutTab(),
                  //burger tab
                  BurgerTab(),
                  //smoothie tab
                  SmoothieTab(),
                  //pancake tab
                  PancakeTab(),
                  //pizza tab
                  PizzaTab(),
                ],
              )
            )
          ]
        )
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey[800],
            size: 36,
          ),
          onPressed: () {
            //open drawer
          },
        )
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: IconButton(
              onPressed: (){
                //account button tapped
              },
              icon: Icon(
              Icons.person,
              color: Colors.grey[800],
              size: 36,
            ),
          )
        )
      ],
    );
  }
}