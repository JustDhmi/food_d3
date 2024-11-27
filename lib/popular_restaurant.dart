import 'package:flutter/material.dart';
import 'package:food_d3/ScaleRoute.dart';
import 'package:food_d3/pages/restaurant_page.dart';

class PopularRestaurantWidget extends StatefulWidget {
  @override
  _PopularRestaurantWidgetState createState() =>
      _PopularRestaurantWidgetState();
}

class _PopularRestaurantWidgetState extends State<PopularRestaurantWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          PopularRestaurantTitle(),
          Expanded(
            child: PopularRestaurantItems(),
          )
        ],
      ),
    );
  }
}

class PopularRestaurantTiles extends StatelessWidget {
  var name;
  var imageUrl;
  var rating;
  var numberOfRating;
  var location;
  var countRating;
  var ner;

  PopularRestaurantTiles(
      {Key? key,
      @required this.name,
      @required this.imageUrl,
      @required this.rating,
      @required this.numberOfRating,
      @required this.location,
      @required this.countRating,
      @required this.ner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, ScaleRoute(page: RestaurantPageView()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: BoxDecoration(boxShadow: [
              /* BoxShadow(
                color: Color(0xFFfae3e2),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),*/
            ]),
            child: Card(
                color: Color.fromARGB(255, 255, 254, 254),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 170,
                  height: 200,
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
                              'assets/images/popular_foods/' +
                                  imageUrl +
                                  ".png",
                              width: 120,
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
                            child: Text(name,
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
                              // width: 48,
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
                                  Text(ner + " ",
                                      style: TextStyle(
                                          color: Color(0xFF6e6e71),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500)),
                                  Icon(
                                    Icons.near_me,
                                    color: Color(0xFFfb3132),
                                    size: 12,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
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
                                child: Text("($numberOfRating)",
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Row(
                              children: [
                                Text(location,
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 11,
                                        fontWeight: FontWeight.w600)),
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 13,
                                  color: Colors.grey.shade400,
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularRestaurantTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popluar Restaurant",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularRestaurantItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularRestaurantTiles(
            name: "AL-SADA",
            imageUrl: "sada",
            rating: '4.9',
            numberOfRating: '50',
            location: 'mukalla',
            countRating: "23",
            ner: "12km"),
        PopularRestaurantTiles(
            name: "AL-BAEK",
            imageUrl: "al-baek",
            rating: "4.9",
            numberOfRating: "10",
            location: "mukalla",
            countRating: "34",
            ner: "12km"),
        PopularRestaurantTiles(
            name: "SHAWARMER",
            imageUrl: "shawarmer",
            rating: "4.0",
            numberOfRating: "50",
            location: "mukalla",
            countRating: "43",
            ner: "12km"),
        PopularRestaurantTiles(
            name: "BUGER LINE",
            imageUrl: "line",
            rating: "4.00",
            numberOfRating: "10",
            location: "mukalla",
            countRating: "34",
            ner: "12km"),
        PopularRestaurantTiles(
            name: "AL-KORNASH",
            imageUrl: "al-kornay",
            rating: "4.6",
            numberOfRating: "15",
            location: "mukalla",
            countRating: "12",
            ner: "12km"),
      ],
    );
  }
}
