import 'package:flutter/material.dart';
import 'package:food_d3/ScaleRoute.dart';
import 'package:food_d3/SignInPage.dart';
import 'package:food_d3/BestFoodWidget.dart';
import 'package:food_d3/PopularFoodsWidget.dart';
import 'package:food_d3/SearchWidget.dart';
import 'package:food_d3/TopMenus.dart';
import 'package:food_d3/popular_restaurant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC08989),
        elevation: 0,
        title: Text(
          "What would you like to eat?",
          style: TextStyle(
            color: Color(0xFF3a3737),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.login_rounded,
              color: Color(0xFF3a3737),
            ),
            onPressed: () {
              Navigator.push(context, ScaleRoute(page: SignInPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Column(
            children: <Widget>[
              SearchWidget(),
              SizedBox(height: 20),
              TopMenus(),
              SizedBox(height: 20),
              PopularRestaurantWidget(),
              SizedBox(height: 20),
              PopularFoodsWidget(),
              SizedBox(height: 20),
              BestFoodWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
