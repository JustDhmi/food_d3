import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_d3/PopularFoodsWidget.dart';

class RestaurantPageView extends StatefulWidget {
  const RestaurantPageView({super.key});

  @override
  State<RestaurantPageView> createState() => _RestaurantPageViewState();
}

class _RestaurantPageViewState extends State<RestaurantPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF3a3737),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "arabic Restaurant",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
              decoration: BoxDecoration(boxShadow: [
                /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
              ]),
              child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 210,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  alignment: Alignment.topRight,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(right: 5, top: 5),
                                  child: Container(
                                    height: 28,
                                    width: 28,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white70,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFFfae3e2),
                                            blurRadius: 25.0,
                                            offset: Offset(0.0, 0.75),
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xFFfb3132),
                                      size: 16,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Center(
                                    child: Image.asset(
                                  'assets/images/popular_foods/sada.png',
                                  width: 130,
                                  height: 140,
                                )),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("Al-sadda",
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.only(right: 5),
                                child: Container(
                                  height: 28,
                                  width: 42,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white70,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0xFFfae3e2),
                                          blurRadius: 25.0,
                                          offset: Offset(0.0, 0.75),
                                        ),
                                      ]),
                                  child: Row(
                                    children: [
                                      Text("23km",
                                          style: TextStyle(
                                              color: Color(0xFF6e6e71),
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400)),
                                      Icon(
                                        Icons.near_me,
                                        color: Color(0xFFfb3132),
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: Text("4.7",
                                        style: TextStyle(
                                            color: Color(0xFF6e6e71),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 3, left: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFFfb3132),
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 10,
                                          color: Color(0xFF9b9b9c),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: Text("(23)",
                                        style: TextStyle(
                                            color: Color(0xFF6e6e71),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding:
                                    EdgeInsets.only(left: 5, top: 5, right: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 18,
                                      color: Colors.grey.shade400,
                                    ),
                                    Text('Mukalla',
                                        style: TextStyle(
                                            color: Color(0xFF6e6e71),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 320,
              child: GridView.builder(
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 5,
                    mainAxisExtent: 210),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 100,
                    child: items[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  List items = [
    PopularFoodTiles(
        name: "مدفون ولحم",
        imageUrl: "sada (1)",
        rating: '4.9',
        numberOfRating: '200',
        price: '11900',
        slug: ""),
    PopularFoodTiles(
        name: "مندي لحم",
        imageUrl: "sada (2)",
        rating: '4.9',
        numberOfRating: '200',
        price: '9000',
        slug: "مندي لحم"),
    PopularFoodTiles(
        name: " دجاج مظبي",
        imageUrl: "sada (3)",
        rating: '4.9',
        numberOfRating: '200',
        price: '3000',
        slug: "دجاج مظبي"),
    PopularFoodTiles(
        name: "كريم كراميل",
        imageUrl: "sadahala",
        rating: '4.9',
        numberOfRating: '200',
        price: '2000',
        slug: "كريم كراميل"),
    PopularFoodTiles(
        name: "دجاج مضغوط",
        imageUrl: "sada (4)",
        rating: '4.9',
        numberOfRating: '200',
        price: '3000',
        slug: "دجاج مضغوط"),
  ];
}
