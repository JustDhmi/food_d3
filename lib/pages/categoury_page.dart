import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_d3/PopularFoodsWidget.dart';

class CategouryPageView extends StatefulWidget {
  const CategouryPageView({super.key});

  @override
  State<CategouryPageView> createState() => _CategouryPageViewState();
}

class _CategouryPageViewState extends State<CategouryPageView> {
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
          "Catagory",
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
                                alignment: Alignment.centerLeft,
                                child: Center(
                                    child: Image.asset(
                                  'assets/images/popular_foods/piz5.png',
                                  width: 130,
                                  height: 140,
                                )),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("Pizza",
                                    style: TextStyle(
                                        color: Color(0xFF6e6e71),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
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
        name: "Pizza Doubel Chicken",
        imageUrl: "piz2",
        rating: '4.9',
        numberOfRating: '200',
        price: '5500',
        slug: "Pizza "),
    PopularFoodTiles(
        name: "Pizza bobroni",
        imageUrl: "pize (1)",
        rating: '4.9',
        numberOfRating: '200',
        price: '4500',
        slug: "Pizza "),
    PopularFoodTiles(
        name: "Pizza meet",
        imageUrl: "pize (2)",
        rating: '4.9',
        numberOfRating: '200',
        price: '5000',
        slug: "Pizza "),
    PopularFoodTiles(
        name: "Pizza chicken",
        imageUrl: "pize (3)",
        rating: '4.4',
        numberOfRating: '200',
        price: '4000',
        slug: "Pizza "),
    PopularFoodTiles(
        name: "Pizza vegtabols",
        imageUrl: "pize (5)",
        rating: '5.0',
        numberOfRating: '200',
        price: '6000',
        slug: "Pizza "),
  ];
}
