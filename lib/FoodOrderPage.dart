import 'package:flutter/material.dart';

class FoodOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 158, 100, 100),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 236, 26, 26),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(
          child: Text(
            "Item Carts",
            style: TextStyle(
              color: Color(0xFF3a3737),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          CartIconWithBadge(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Food Cart",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              CartItem(
                productName: "Tositr",
                productPrice: "\$2000",
                productImage: "broset",
                productCartQuantity: "2",
              ),
              SizedBox(height: 10),
              CartItem(
                productName: "Areeka Star",
                productPrice: "\$6000",
                productImage: "areka",
                productCartQuantity: "5",
              ),
              SizedBox(height: 10),
              PromoCodeWidget(),
              SizedBox(height: 10),
              TotalCalculationWidget(),
              SizedBox(height: 10),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              PaymentMethodWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentMethodWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFfae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                "assets/images/menus/ic_credit_card.png",
                width: 50,
                height: 50,
              ),
              SizedBox(width: 10),
              Text(
                "Credit/Debit Card",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TotalCalculationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tositr", style: _textStyle()),
                Text("\$2000", style: _textStyle()),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Areeka Star", style: _textStyle()),
                Text("\$6000", style: _textStyle()),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total", style: _textStyle(fontWeight: FontWeight.w600)),
                Text("\$8000", style: _textStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyle({FontWeight fontWeight = FontWeight.w400}) {
    return TextStyle(
      fontSize: 18,
      color: Color(0xFF3a3a3b),
      fontWeight: fontWeight,
    );
  }
}

class PromoCodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFe6e1e1), width: 1.0),
          borderRadius: BorderRadius.circular(7),
        ),
        fillColor: Colors.white,
        hintText: 'Add Your Promo Code',
        filled: true,
        suffixIcon: Icon(
          Icons.local_offer,
          color: Color(0xFFfd2c2c),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;
  final String productCartQuantity;

  CartItem({
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productCartQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(
              "assets/images/popular_foods/$productImage.png",
              width: 100,
              height: 100,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName, style: _textStyle()),
                SizedBox(height: 5),
                Text(productPrice, style: _textStyle()),
              ],
            ),
            Spacer(),
            Image.asset(
              "assets/images/menus/ic_delete.png",
              width: 25,
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      fontSize: 18,
      color: Color(0xFF3a3a3b),
      fontWeight: FontWeight.w400,
    );
  }
}

class CartIconWithBadge extends StatelessWidget {
  final int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Icons.business_center,
            color: Color(0xFF3a3737),
          ),
          onPressed: () {},
        ),
        if (counter > 0)
          Positioned(
            right: 11,
            top: 11,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: BoxConstraints(
                minWidth: 14,
                minHeight: 14,
              ),
              child: Text(
                '$counter',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
