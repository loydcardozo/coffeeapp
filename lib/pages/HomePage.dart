import 'package:coffeeapp/components/HomescreenBanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String,String>> items =[
    {
      "Name" : "capucino",
      "image" : "assets/images/"
    },
    {
      "Name" : ""
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(
              Icons.search,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                  Icons.person_2,
                size: 30,
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text('A good platform to book your coffee',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1
                ),
              ),

              HomeScreenBanner(),

              SizedBox(height: 20,),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}

