import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // لإعداد SystemUiOverlayStyle
import 'package:food_d3/ScaleRoute.dart';
import 'package:food_d3/FoodOrderPage.dart';

class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  get non => null;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.dark, // استبدال brightness
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.business_center,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {
                Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
              },
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/images/popular_foods/' + 'sada (1)' + ".png",
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                elevation: 1,
                margin: EdgeInsets.all(5),
              ),
              FoodTitleWidget(
                productName: "Mdfon-meet",
                productPrice: "\$10000",
                productHost: "Al-Sada",
              ),
              SizedBox(height: 15),
              AddToCartMenu(),
              SizedBox(height: 15),
              PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Color(0xFFfd3f40),
                  indicatorColor: Color(0xFFfd3f40),
                  unselectedLabelColor: Color(0xFFa4a1a1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(text: 'Food Details'),
                    Tab(text: 'Food Reviews'),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                      child: DetailContentMenu(),
                    ),
                    Container(
                      color: Colors.white24,
                      child: DetailContentMenu(),
                    ),
                  ],
                ),
              ),
              BottomMenu(),
            ],
          ),
        ),
      ),
    );
  }
}

class FoodTitleWidget extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productHost;

  FoodTitleWidget({
    required this.productName,
    required this.productPrice,
    required this.productHost,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              productPrice,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: <Widget>[
            Text(
              "by ",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFa9a9a9),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              productHost,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1f1f1f),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.timelapse,
                color: Color(0xFF404aff),
                size: 35,
              ),
              SizedBox(height: 15),
              Text(
                "12pm-3pm",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.directions,
                color: Color(0xFF23c58a),
                size: 35,
              ),
              SizedBox(height: 15),
              Text(
                "3.5 km",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.map,
                color: Color(0xFFff0654),
                size: 35,
              ),
              SizedBox(height: 15),
              Text(
                "Map View",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.directions_bike,
                color: Color(0xFFe95959),
                size: 35,
              ),
              SizedBox(height: 15),
              Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFFa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, ScaleRoute(page: FoodOrderPage()));
            },
            child: Container(
              width: 200.0,
              height: 45.0,
              decoration: BoxDecoration(
                color: Color(0xFFfd2c2c),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Add To Bag',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color(0xFFfd2c2c),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}

class DetailContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'وصف تفصيلي للطعام...',
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black87,
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
